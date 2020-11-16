import bintree

main does
	node* root = new_node(1);

	root->left  = new_node(0);
	root->right = new_node(2);

	WriteIntln(root->data);
	WriteIntln(root->left->data);
	WriteIntln(root->right->data);

	end;
fi