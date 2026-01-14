#!/usr/bin/env ruby
require 'rubygems'
require 'csv'
require 'awesome_print'
require 'logger'
require 'pry-byebug'
logger = Logger.new($stderr)
logger.level = Logger::DEBUG

questions_filename = ARGV[0]
answers_filename = ARGV[1]
trusted_contributors_filename = ARGV[2]
question_ids_and_original_posters = []
CSV.foreach(questions_filename, headers: true) do |row|
  if row['is_solved'] == 'false'
    question_ids_and_original_posters << { question_id: row['id'],
                                           original_poster: row['creator'] }
  end
end
trusted_contributors = []
CSV.foreach(trusted_contributors_filename, headers: true) do |row|
  trusted_contributors << row['creator']
end
logger.debug "UNSOLVED question ids and creators: #{question_ids_and_original_posters.ai}"
logger.debug "TRUSTED contributors: #{trusted_contributors.ai}"

@answers_table = CSV.table(answers_filename)
logger.debug "answers_table: #{@answers_table.ai}"
puts 'id,is_trusted_contributor,creator'
last_answer_from_original_poster = true

question_ids_and_original_posters.each do |q|
  original_poster = q[:original_poster]
  question_id = q[:question_id]
  logger.debug  "q:#{q}"
  matching_answers = @answers_table.select { |a| a[:question_id] == question_id.to_i }
  logger.debug "matching_answers: #{matching_answers.ai}"
  last_answer_from_original_poster = true
  last_answer_from_trusted_contributor = false
  last_answer_from_other_contributor = false
  trusted_or_other_contributor = ''
  matching_answers.each do |a|
    answer_creator = a[:creator]
    if answer_creator == original_poster
      logger.debug "answer: #{a.ai} is from original_poster"
      last_answer_from_original_poster = true
      last_answer_from_trusted_contributor = false
      last_answer_from_other_contributor = false
    else
      last_answer_from_original_poster = false
      trusted_or_other_contributor = answer_creator
      if trusted_contributors.include?(answer_creator)
        last_answer_from_trusted_contributor = true
        last_answer_from_other_contributor = false
      else
        last_answer_from_trusted_contributor = false
        last_answer_from_other_contributor = true
      end
    end
  end
  unless last_answer_from_original_poster
    if last_answer_from_trusted_contributor
      puts "#{question_id},true,#{trusted_or_other_contributor}"
    else
      puts "#{question_id},false,#{trusted_or_other_contributor}"
    end
  end
end
