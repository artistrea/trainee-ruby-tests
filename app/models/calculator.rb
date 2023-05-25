class Calculator < ApplicationRecord
    def sum(a, b)
        return a + b
    end

    def sub(a, b)
        return a - b
    end

    def transpose(m)
        # n_of_lines = m.size
        # n_of_col = m[0].size
        
        # mf = []

        # for i in 0...n_of_col
        #     mf.push([])
        #     for j in 0...n_of_lines
        #         mf[i].push(0)
        #     end
        # end

        # for i in 0...n_of_lines
        #     for j in 0...n_of_col
        #         mf[j][i] = m[i][j]
        #     end
        # end

        # return mf
        return m.transpose()
    end
end
