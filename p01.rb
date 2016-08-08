require 'awesome_print'

module AreAnagrams
	def self.are_anagrams?(string_a, string_b)
		words_hash = [string_a, string_b].group_by {|word| word.chars.sort }
		ap words_hash.keys.count == 1
	end
end

AreAnagrams.are_anagrams?('olco', 'cool')