%w{rubygems irb/completion irb/ext/save-history pp ruby-debug}.each do |lib| 
  begin 
    require lib 
  rescue LoadError => err
    $stderr.puts "Couldn't load #{lib}: #{err}"
  end
end
 
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
 
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV["HOME"]}/.irb_history"
IRB.conf[:PROMPT_MODE]  = :SIMPLE
IRB.conf[:AUTO_INDENT]  = true
IRB.conf[:EVAL_HISTORY] = 100
IRB.conf[:USE_READLINE] = true

# Log to STDOUT if in Rails
if ENV.include?("RAILS_ENV") && !Object.const_defined?("RAILS_DEFAULT_LOGGER")
 require "logger"
 RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end
