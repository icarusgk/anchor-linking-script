#!/usr/bin/env ruby

def usage
  puts "Usage: ruby script.rb files.txt <path_to_english_docs> <path_to_translated_docs>"
end

if ARGV.length != 3
  usage
  exit 1
end

files_txt = ARGV[0]
en_docs = ARGV[1]
translated_docs = ARGV[2]

begin
  files_file = File.open(files_txt)
  files_content = files_file.read
  files = files_content.split("\n")
  files_file.close
rescue StandardError => e
  puts "Error opening file: #{files_txt}"
  puts e.message
  exit 1
end

header_anchor = /^(#.+)\s(\{.+\})$/

files.each do |file|
  file1 = en_docs + file
  file2 = translated_docs + file

  begin
    f1 = File.open(file1, "r")
    contents1 = f1.read
    f1.close
    eng_docs_lines = contents1.split("\n")
    headers = []
    anchors = []
    eng_docs_lines.each do |line|
      if match = line.match(header_anchor)
        headers.push match[1]
        anchors.push match[2]
      end
    end
  rescue StandardError => e
    puts "Error opening file: #{file1}"
    puts e.message
    exit 1
  end

  translated_docs_title = /^#+.+/
  i = 0

  begin
    lines = File.readlines(file2)
    File.open(file2, "w") do |f|
      lines.each do |line|
        if translated_match = line.match(translated_docs_title)
          if header_and_anchor = translated_match.string.match(header_anchor)
            f.puts("#{header_and_anchor[1].strip} #{anchors[i]}")
          else
            f.puts("#{translated_match.to_s.strip} #{anchors[i]}")
          end
          i += 1
        else
          f.puts line
        end
      end
    end
  rescue StandardError => e
    puts "Error opening file: #{file2}"
    puts e.message
    exit 1
  end
end