#
# SourceFileInfo.rb - The TaskJuggler3 Project Management Software
#
# Copyright (c) 2006, 2007 by Chris Schlaeger <cs@kde.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#


# Simple class that holds the info about a source file reference.
class SourceFileInfo

  attr_reader :fileName, :lineNo, :columnNo

  # Create a new SourceFileInfo object. _file_ is the name of the file. _line_
  # is the line in this file, _col_ is the column number in the line.
  def initialize(file, line, col)
    @fileName = file
    @lineNo = line
    @columnNo = col
  end

  # Return the info in the common "filename:line:" format.
  def to_s
    # The column is not reported for now.
    "#{@fileName}:#{@lineNo}:"
  end

end
