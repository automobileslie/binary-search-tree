class BST
    def initialize(data)
        @data = data
        @left = nil
        @right = nil
        
    end

    def data
        @data
    end

    def left
       @left
    end

    def left=(left)
        @left = left
    end

    def right
        @right
    end

    def right=(right)
        @right = right
    end

    def insert(num)
        currentNode = self
        stopLoop = 0

        while stopLoop == 0
            if currentNode.data >= num
                if currentNode.left == nil
                    newNode = BST.new(num)
                    currentNode.left = newNode
                    stopLoop = 1
                else
                    # if currentNode.left > num
                    #     leftNode = currentNode.left
                    #     newNode = BST.new(num)
                    #     currentNode.left = newNode
                    #     newNode.left = leftNode
                    #     stopLoop = 1

                    # else 
                    leftNode = currentNode.left
                    currentNode = leftNode
                    insert(num)
                    # end
                end
            elsif currentNode.data < num
                if currentNode.right == nil
                    newNode = BST.new(num)
                    currentNode.right = newNode
                    stopLoop = 1
                else
                    rightNode = currentNode.right
                    currentNode = rightNode
                    insert(num)
                end
            end
        end
    end

end