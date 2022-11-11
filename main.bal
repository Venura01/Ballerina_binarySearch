import ballerina/io;

int[] list = [1,2,8,6,4,9,3];
int[] done = [];
int last = list.length()-1;

function insertionSort (){
    foreach var j in 0..<list.length() {
        int key = list[j];
        int i = j-1;

         while (i > -1) && ( done [i] > key )  {
                done [i+1] = done [i];
                i= i-1;
            }
            done[i+1]= key;
    }
    
}

function binarySearch(int first, int last, int key) returns int|string {
    if last>=first {
        int mid = first + (last-first)/2;
        if done[mid]==key {
            return mid;
        }
        if done[mid]>key {
            return binarySearch(first,mid-1,key);
        } else {
            return binarySearch(mid+1,last,key);
        }
    }
      return "invalid";
}

public function main() {
    insertionSort();
    io:print(done);
}
