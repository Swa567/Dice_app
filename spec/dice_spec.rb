require 'dice'

def dice_number
    $stdin.gets.chomp
end

describe 'dice_number' do
    before do
      $stdin = StringIO.new("1")
    end

    after do
        $stdin = STDIN
    end

    it "should be '1'" do
        expect(dice_number).to be == "1"
    end
end

describe Dice do
    it "allows the user to roll a dice" do
        #Arrange, Act, Assert
        #Arrange: getting everything we need for our test together
        #Act: Running the code we have to run in order t test what we're getting
        #Assert: Run our expect to check that our assumptions match the actual behavior
        expect(subject).to respond_to(:roll)
        #Subject is the same as creating dice = Dice.new
    end
    # xit "returns a number between one and six" do
    #     dice = Dice.new
    #     expect(dice.roll).to eq(1)
    # end
    it "the dice roll should be random between 1 and 6" do
        expect(subject.roll).to be >= 1
        expect(subject.roll). to be <= 6
    end
    it "User is able to input info" do
        expect($stdin).to respond_to(:gets)
    end
end