//暴力法
int* twoSum(int* nums, int numsSize, int target, int* returnSize){
    for (int i=0;i+1<numsSize;++i){
        for (int j=i+1;j<numsSize;++j){
            if (nums[i]+nums[j]==target) {
                returnSize[0]=2;
                int* ret=(int*)malloc(2*sizeof(int));
                ret[0]=i;
                ret[1]=j;
                return ret;
            }
        }
    }
    return 0;
}
    
