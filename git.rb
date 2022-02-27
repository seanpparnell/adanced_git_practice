module Git


  def self.config
    puts `git config -l`
  end
  def self.git_cd(cmd)
    puts `git #{cmd} -h`
  end

end