#
# MessageHandler.rb - The TaskJuggler3 Project Management Software
#
# Copyright (c) 2006, 2007 by Chris Schlaeger <cs@kde.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#


class MessageHandler

  attr_reader :messages

  def initialize(console = false)
    @messages = []
    @console = console
  end

  def send(message)
    @messages << message
    if @console
      $stderr.puts message
    end
  end

end
