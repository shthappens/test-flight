class Airplane
  attr_reader :type, :wing_loading, :horsepower
  attr_accessor :status, :plane_status

  def initialize(type, wing_loading, horsepower, status)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @status = status
  end

  def start
    if @status == "running"
      "airplane already started"
    elsif @status == "not running"
      "airplane started"
      @status = "Running"
    else
      "the engine doesn't run"
    end
  end

  def land
    if @status == "flying"
      @status = "landed"
      "successful landing"
    else
      @status = "grounded"
    end
  end

  def takeoff
    if @status == "running"
      @status = "flying"
      "successful takeoff"
    else
      @status = "grounded"
    end
  end
end
