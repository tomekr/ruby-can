require 'bindata'

class CanPacket < BinData::Record
  endian :little

  uint32 :can_id
  uint32  :can_dlc
  array  :data, :type => :uint8, :initial_length => :can_dlc, :read_length => :can_dlc
  #string :data, length: 8
end

