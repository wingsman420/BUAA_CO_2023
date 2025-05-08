#include<stdio.h>
#include<string.h>
#include<math.h>
#include<stdlib.h>

int tensor[100];
int kernal[100];
int anwser[100];

int main()
{
	int m1;//line
	int m2;
	int n1;//array
	int n2;
	scanf("%d",&m1);
	scanf("%d",&n1);
	scanf("%d",&m2);
	scanf("%d",&n2);
	for (int i = 0; i < m1*n1 ; i++)
	{
		scanf("%d",&tensor[i]);
	}  
	for (int i = 0; i < m2*n2 ; i++)
	{
		scanf("%d",&kernal[i]);
	}
	int line = m1-m2+1;
	int array = n1-n2+1;
	int p,q;
	for(int i = 0 ;i < line*array;i++)
	{
		p = i/array;//ÐÐ 
		q = i%array;//ÁÐ 
		anwser[i] = 0;
		for(int j = 0 ; j < m2; j++)
		{
			for(int k = 0; k< n2; k++)
			{
				anwser[i] += tensor[(p+j)*n1 + k+q] * kernal[j*n2+k]; 
			}
		} 
		
	}
	for(int i = 0 ;i < line; i++)
	{
		for(int j = 0; j < array; j++)
		{
			printf("%d ",anwser[i*array + j]);
		}
		printf("\n");
	}
	   
}
