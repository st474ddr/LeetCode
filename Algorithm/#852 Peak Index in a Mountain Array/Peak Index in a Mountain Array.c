
//find max index
int peakIndexInMountainArray(int* A, int ASize){
    int i,max=0,index=0;
    for(i = 0; i < ASize; i++)
    {
        if(A[i] > max)
        {
            max = A[i];
            index = i;
        }
    }
    return index ;
}
