$nestingDepth = 0
def log descriptionOfBlock, &block
  puts ' ' * $nestingDepth + 'Beginning "' + descriptionOfBlock + '"...'
  $nestingDepth += 2
  returnValue = block.call
  $nestingDepth -= 2
  puts ' ' * $nestingDepth + '..."' + descriptionOfBlock + '" finished, returning: ' + returnValue.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    42
  end
  log 'yet another block' do
    'I like Indian food!'
  end
  true
end
