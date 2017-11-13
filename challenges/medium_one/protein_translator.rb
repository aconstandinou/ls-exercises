class InvalidCodonError < StandardError
end

class Translation

  CODON_HASH = {'AUG'=>'Methionine', 'UUU' => 'Phenylalanine',
                'UUC' => 'Phenylalanine', 'UUA' => 'Leucine',
                'UUG' => 'Leucine', 'UCU' => 'Serine', 'UCC' => 'Serine',
                'UCA' => 'Serine', 'UCG' => 'Serine',
                'UAU' => 'Tyrosine', 'UAC' => 'Tyrosine', 'UGU' => 'Cysteine',
                'UGC' => 'Cysteine', 'UGG' => 'Tryptophan',
                'UAA' => 'STOP', 'UAG' => 'STOP', 'UGA' => 'STOP'}

  def self.of_codon(codon)
    CODON_HASH.fetch(codon) { fail InvalidCodonError }
  end

  def self.of_rna(strand)
    converted = []
    rna_codons = strand.scan(/.{3}/)

    rna_codons.each do |rna_split|
      break if CODON_HASH[rna_split] == 'STOP'
      converted << CODON_HASH[rna_split]
    end
    raise InvalidCodonError if converted.empty? || converted.any? { |subb| subb == nil }
    converted.uniq!
    return converted.join('') if converted.size == 1
    converted
  end

end
