require "ruby-graphviz"

module Dockern
  class Component
    attr_accessor :id
    def self.style
      @style
    end
    def self.name
      @name
    end
  end
  class Stage
    def initialize
      @gv = GraphViz.new( :G, :type => :digraph )
    end
    def add(component)
      @gv.add_nodes( component.id, **component.class.style)
    end
    def edge
      # gv.add_edges( s, p )
      # gv.add_nodes( "s", **Dockern::Container.style)
    end
    def route(from_to)
      from_to, _ = *from_to
      from, to = from_to
      add(from)
      add(to)
      @gv.add_edges(from, to)
    end
    def output(arg)
      @gv.output(**arg)
    end
  end
  class ExternalService < Component
  end
  class Host < Component

  end
  class Firewall < Component
  end
  class Network < Component
  end
  class Image < Component
  end
  class Container < Image
    @style = { shape: 'box3d' }
    @name = :container
    def initialize(id)
      @id = id
    end
  end
  class Process
  end
  class Interface < Component
  end
  class Veth < Interface
  end
  class Napt < Interface
  end
  class Storage
  end
  class ExternalStorage < Storage
  end
  class HostStorage < Storage
  end
  class NFSMount < Storage
  end
  class HostPath < Storage
  end
  class ContainerPath < Storage
  end
  class NamedVolume < Storage
  end
  class Group
  end
  class Connection
  end
  class AddictedConnection < Connection
  end
  class SimpleConnection < Connection
  end
  class VolumeConnection < Connection
  end
  class BindMountConnection < VolumeConnection
  end
  class NamedVolumeConnection < VolumeConnection
  end
end
