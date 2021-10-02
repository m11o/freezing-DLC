require 'fileutils'

ret_dir_path = '/home/velonica2227/Desktop/fz4_video/ext/'
ret_dir = Dir.open(ret_dir_path)
ret_dir.each do |ret_video_dir|
  next if ret_video_dir =~ /\A\.{1,2}\z/

  ret_videos_path = ret_dir_path + ret_video_dir + '/Images/'

  puts ret_video_dir
  videos_dir = Dir.open(ret_videos_path)
  videos_dir.each do |video_name|
    next if video_name !~ /(\A\d)\.avi/

    puts video_name
    video_path = ret_videos_path + video_name

    moved_file_name = ret_video_dir + '_' + video_name
    moved_file_path = "./trained_videos/ext/#{moved_file_name}"
    puts video_path
    puts moved_file_path
    FileUtils.cp(video_path, moved_file_name)
  end
end
