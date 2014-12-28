def log descriptionOfBlock, &block
  puts 'Beginning "' + descriptionOfBlock + '"...'
  returnValue = block.call
  puts '..."' + descriptionOfBlock + '" finished, returning: ' + returnValue.to_s
end

log 'outer block' do
  log 'some little block' do
    5
  end
  log 'yet another block' do
    'I like Thai food!'
  end
  false
end
