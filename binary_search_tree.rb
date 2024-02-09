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
                if  currentNode.left == nil || currentNode.left.data == nil
                    newNode = BST.new(num)
                    currentNode.left = newNode
                    stopLoop = 1
                elsif currentNode.left.data >= num
                    leftNode = currentNode.left
                    if leftNode.left
                        currentNode = currentNode.left
                        insert(num)
                    else
                        newNode = BST.new(num)
                        leftNode.left = newNode
                        stopLoop = 1
                    end
                else
                    leftNode = currentNode.left
                    if leftNode.right
                        currentNode = currentNode.right
                        insert(num)
                    else
                        newNode = BST.new(num)
                        leftNode.right = newNode
                        stopLoop = 1
                    end
                end
            elsif currentNode.data < num
                rightNode = currentNode.right
                if rightNode == nil || rightNode.data == nil
                    newNode = BST.new(num)
                    currentNode.right = newNode
                    stopLoop = 1
                elsif rightNode.data <= num
                    if rightNode.right
                        currentNode = currentNode.right
                        insert(num)
                    else
                        newNode = BST.new(num)
                        rightNode.right = newNode
                        stopLoop = 1
                    end
                else
                    rightNode = currentNode.right
                    if rightNode.left
                        currentNode = currentNode.left
                        insert(num)
                    else
                        newNode = BST.new(num)
                        rightNode.left = newNode
                        stopLoop = 1
                    end
                end
             
            end
        end
    end

    def all_data(self.data)
       # traverse the binary tree and push each value into an array, then sort it
       # this method should return an array of the data for each node in the tree
       # it should be called at the end of the initializer method  
    end

end