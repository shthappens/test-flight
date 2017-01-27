require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { Airplane.new("cesna", 10, 150, "running") }

  describe "#initialization" do

      it "returns the type of airplane, wing load, horsepower, and engine status" do
      expect(my_plane.type).to eq("cesna")
    end

    it "returns the wing load" do
      expect(my_plane.wing_loading).to eq(10)
    end

    it "returns the horsepower" do
      expect(my_plane.horsepower).to eq(150)
    end

    it "returns the engine status" do
      expect(my_plane.status).to eq("running")
    end
  end

  describe "#start" do
    it "checks the status to see if the engine is running or not. If not, it starts the engine." do
      expect(my_plane.start).to eq("airplane already started")
    end
  end

  describe "#land" do
    it "returns whether or not the plane is flying or on the ground" do
      my_plane.takeoff
      expect(my_plane.land).to eq("successful landing")
    end
  end

  describe "#takeoff" do
    it "returns whether or not the plane is flying" do
      expect(my_plane.takeoff).to eq("successful takeoff")
    end
  end

end
