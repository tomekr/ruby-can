require 'bindata'

class CanPacket < BinData::Record
  endian :little

  uint32 :can_id
  uint8  :can_dlc
  array  :data, :initial_length => :len
end

