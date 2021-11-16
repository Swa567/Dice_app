require 'dice'

#Arrange, Act, Assert
    #Arrange: getting everything we need for our test together
    #Act: Running the code we have to run in order t test what we're getting
    #Assert: Run our expect to check that our assumptions match the actual behavior

def dice_number
    $stdin.gets.chomp
end

describe 'dice_number' do                                   # user story 2 => get user's input
    before do
      $stdin = StringIO.new("1")
    end

    after do
        $stdin = STDIN
    end

    it "should be '1'" do                                   # user story 1
        expect(dice_number).to be == "1"
    end
end

describe Dice do
    it "allows the user to roll a dice" do                  # user story 1 => dice respond to roll
        expect(subject).to respond_to(:roll)
        # Subject is the same as creating dice = Dice.new
    end

    # xit "returns a number between one and six" do
    #     dice = Dice.new
    #     expect(dice.roll).to eq(1)
    # end

    it "returns a random number between 1 and 6" do
        # expect a number bigger than 1
        expect(subject.roll).to be >= 1
        # expect a number smaller than 6
        expect(subject.roll).to be <= 6
        # check it is an integer
        expect(subject.roll).to be_an(Integer)
    end

    it "allows user to roll several dices" do

    end

end