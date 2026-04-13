.class public Lib/player/DataBinderMapperImpl;
.super Landroidx/databinding/a;


# static fields
.field public static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lib/player/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0e0045

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0047

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e004b

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e004d

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e004e

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0051

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0053

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0054

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0059

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e005a

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e005b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    invoke-direct {v1}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final b(Landroid/view/View;I)Landroidx/databinding/e;
    .locals 39

    move-object/from16 v2, p1

    sget-object v0, Lib/player/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v9, 0x0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    const/16 v5, 0xd

    const/16 v6, 0x16

    const/16 v7, 0x18

    const-wide/16 v10, 0x1

    const-wide/16 v12, -0x1

    const/16 v8, 0x9

    const/4 v14, 0x4

    const/4 v15, 0x5

    const/16 v16, 0x6

    const/16 v17, 0x12

    const/16 v18, 0x1

    const/16 v19, 0xf

    const/16 v20, 0xb

    const/16 v21, 0x19

    const/16 v22, 0x15

    const/16 v23, 0xe

    const/16 v24, 0xa

    const/16 v25, 0x17

    const/16 v26, 0x13

    const/16 v27, 0x3

    const/16 v28, 0x7

    const/16 v29, 0x8

    const/16 v30, 0x0

    const/16 v31, 0x2

    const/16 v32, 0x10

    const/16 p2, 0x11

    const/16 v3, 0xc

    const/16 v33, 0x1c

    const/16 v34, 0x1b

    const/16 v35, 0x1a

    const/16 v36, 0x14

    const/16 v4, 0x1d

    packed-switch v0, :pswitch_data_0

    :cond_0
    move-object v0, v9

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "layout/fragment_settings_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lx4/v;

    sget-object v0, Lx4/v;->J:Landroid/util/SparseIntArray;

    invoke-static {v2, v3, v0}, Landroidx/databinding/e;->b0(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v3, v0, v16

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    aget-object v4, v0, v28

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    aget-object v5, v0, v27

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v5, v0, v18

    check-cast v5, Landroid/widget/ImageView;

    aget-object v5, v0, v15

    check-cast v5, Landroid/widget/LinearLayout;

    aget-object v5, v0, v20

    check-cast v5, Lpl/droidsonroids/gif/GifImageView;

    aget-object v5, v0, v24

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    aget-object v6, v0, v14

    check-cast v6, Landroid/widget/TextView;

    aget-object v7, v0, v29

    check-cast v7, Landroid/widget/TextView;

    aget-object v8, v0, v8

    check-cast v8, Landroid/widget/TextView;

    aget-object v14, v0, v31

    check-cast v14, Landroidx/constraintlayout/widget/Guideline;

    invoke-direct/range {v1 .. v8}, Lx4/u;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object v3, v1

    iput-wide v12, v3, Lx4/v;->I:J

    aget-object v0, v0, v30

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroidx/databinding/e;->d0(Landroid/view/View;)V

    monitor-enter v3

    :try_start_0
    iput-wide v10, v3, Lx4/v;->I:J

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroidx/databinding/e;->c0()V

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_settings is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "layout/fragment_series_details_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lx4/t;

    const/16 v0, 0x1f

    sget-object v4, Lx4/t;->b0:Landroid/util/SparseIntArray;

    invoke-static {v2, v0, v4}, Landroidx/databinding/e;->b0(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x17

    aget-object v4, v0, v4

    check-cast v4, Landroid/widget/TextView;

    aget-object v15, v0, v15

    check-cast v15, Landroid/widget/ImageButton;

    const/16 v19, 0x1c

    aget-object v19, v0, v19

    check-cast v19, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v21, 0x1a

    aget-object v21, v0, v21

    check-cast v21, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v22, 0x1b

    aget-object v22, v0, v22

    check-cast v22, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v23, 0x13

    aget-object v23, v0, v23

    check-cast v23, Landroid/widget/TextView;

    aget-object v7, v0, v7

    check-cast v7, Landroid/widget/TextView;

    aget-object v6, v0, v6

    check-cast v6, Landroid/widget/TextView;

    aget-object v25, v0, v28

    check-cast v25, Landroidx/constraintlayout/widget/Guideline;

    aget-object v18, v0, v18

    check-cast v18, Landroid/widget/ImageView;

    aget-object v3, v0, v3

    check-cast v3, Landroid/widget/ImageView;

    aget-object v5, v0, v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v25, 0x15

    aget-object v25, v0, v25

    check-cast v25, Landroid/widget/ImageView;

    aget-object v25, v0, v31

    check-cast v25, Landroid/widget/ImageView;

    aget-object v25, v0, v29

    check-cast v25, Landroid/widget/ImageView;

    aget-object v24, v0, v24

    check-cast v24, Landroid/widget/ImageView;

    const/16 v26, 0x19

    aget-object v26, v0, v26

    check-cast v26, Landroid/widget/LinearLayout;

    aget-object v26, v0, v36

    check-cast v26, Landroid/widget/LinearLayout;

    aget-object v14, v0, v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v14, 0x1e

    aget-object v14, v0, v14

    check-cast v14, Lib/player/base/view/LiveHorizontalGridView;

    const/16 v28, 0x1d

    aget-object v28, v0, v28

    check-cast v28, Lib/player/base/view/LiveHorizontalGridView;

    aget-object v17, v0, v17

    check-cast v17, Landroid/widget/ScrollView;

    aget-object v8, v0, v8

    check-cast v8, Landroid/widget/TextView;

    aget-object v29, v0, p2

    check-cast v29, Landroid/widget/TextView;

    const/16 v31, 0xf

    aget-object v31, v0, v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0xe

    aget-object v32, v0, v32

    check-cast v32, Landroid/widget/TextView;

    const/16 v33, 0x10

    aget-object v33, v0, v33

    check-cast v33, Landroid/widget/TextView;

    aget-object v20, v0, v20

    check-cast v20, Landroid/widget/TextView;

    aget-object v16, v0, v16

    check-cast v16, Landroid/widget/TextView;

    aget-object v27, v0, v27

    check-cast v27, Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v10, v26

    move-object/from16 v26, v16

    move-object/from16 v16, v10

    move-object v12, v3

    move-object v3, v4

    move-object v13, v5

    move-object v10, v6

    move-object v4, v15

    move-object/from16 v11, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v15, v24

    move-object/from16 v18, v28

    move-object/from16 v21, v29

    move-object/from16 v24, v33

    move-object/from16 v19, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v25

    move-object/from16 v25, v20

    move-object/from16 v20, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v32

    move-object/from16 v32, v0

    move-object v0, v9

    move-object v9, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v31

    invoke-direct/range {v1 .. v26}, Lx4/s;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lib/player/base/view/LiveHorizontalGridView;Lib/player/base/view/LiveHorizontalGridView;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object v3, v1

    const-wide/16 v9, -0x1

    iput-wide v9, v3, Lx4/t;->a0:J

    aget-object v1, v32, v30

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroidx/databinding/e;->d0(Landroid/view/View;)V

    monitor-enter v3

    const-wide/16 v11, 0x1

    :try_start_2
    iput-wide v11, v3, Lx4/t;->a0:J

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Landroidx/databinding/e;->c0()V

    return-object v3

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_series_details is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string v0, "layout/fragment_series_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lx4/r;

    invoke-direct {v0, v2}, Lx4/r;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_series is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const-string v0, "layout/fragment_movies_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lx4/p;

    invoke-direct {v0, v2}, Lx4/p;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_movies is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    const-string v0, "layout/fragment_movie_info_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lx4/n;

    invoke-direct {v0, v2}, Lx4/n;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_movie_info is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move-object v0, v9

    move-wide/from16 v37, v12

    move-wide v11, v10

    move-wide/from16 v9, v37

    const-string v13, "layout/fragment_live_mobile_0"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v1, Lx4/l;

    sget-object v13, Lx4/l;->T:Landroid/util/SparseIntArray;

    invoke-static {v2, v4, v13}, Landroidx/databinding/e;->b0(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v13, v4, v35

    check-cast v13, Landroidx/appcompat/widget/AppCompatButton;

    aget-object v34, v4, v34

    check-cast v34, Landroidx/appcompat/widget/AppCompatButton;

    aget-object v33, v4, v33

    check-cast v33, Landroid/widget/FrameLayout;

    aget-object v3, v4, v3

    check-cast v3, Landroid/widget/EditText;

    aget-object v32, v4, v32

    check-cast v32, Landroid/widget/EditText;

    aget-object v31, v4, v31

    check-cast v31, Landroid/view/View;

    aget-object v30, v4, v30

    check-cast v30, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v29, v4, v29

    check-cast v29, Landroidx/constraintlayout/widget/Guideline;

    aget-object v28, v4, v28

    check-cast v28, Landroidx/constraintlayout/widget/Guideline;

    aget-object v27, v4, v27

    check-cast v27, Landroid/widget/ImageView;

    aget-object v26, v4, v26

    check-cast v26, Landroid/widget/ImageView;

    aget-object v25, v4, v25

    check-cast v25, Landroid/widget/ImageView;

    aget-object v24, v4, v24

    check-cast v24, Landroid/widget/LinearLayout;

    aget-object v23, v4, v23

    check-cast v23, Landroid/widget/LinearLayout;

    aget-object v22, v4, v22

    check-cast v22, Landroid/widget/LinearLayout;

    aget-object v21, v4, v21

    check-cast v21, Landroid/widget/LinearLayout;

    aget-object v20, v4, v20

    check-cast v20, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v19, v4, v19

    check-cast v19, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v18, v4, v18

    check-cast v18, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v17, v4, v17

    check-cast v17, Landroidx/media3/ui/PlayerView;

    aget-object v5, v4, v5

    check-cast v5, Lib/player/base/view/LiveVerticalGridView;

    aget-object v19, v4, p2

    check-cast v19, Lib/player/base/view/LiveVerticalGridView;

    aget-object v7, v4, v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    aget-object v8, v4, v8

    check-cast v8, Landroid/widget/TextView;

    aget-object v6, v4, v6

    check-cast v6, Landroid/widget/TextView;

    aget-object v20, v4, v36

    check-cast v20, Landroid/widget/TextView;

    aget-object v14, v4, v14

    check-cast v14, Landroidx/constraintlayout/widget/Guideline;

    aget-object v14, v4, v15

    check-cast v14, Landroidx/constraintlayout/widget/Guideline;

    aget-object v4, v4, v16

    check-cast v4, Landroidx/constraintlayout/widget/Guideline;

    move-object v4, v5

    move-object v5, v3

    move-object v3, v13

    move-object v13, v4

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v12, v17

    move-object/from16 v11, v18

    move-object/from16 v14, v19

    move-object/from16 v18, v20

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    move-object/from16 v8, v30

    move-object/from16 v7, v31

    move-object/from16 v4, v34

    move-object/from16 v17, v6

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v18}, Lx4/k;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/media3/ui/PlayerView;Lib/player/base/view/LiveVerticalGridView;Lib/player/base/view/LiveVerticalGridView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object v3, v1

    const-wide/16 v9, -0x1

    iput-wide v9, v3, Lx4/l;->S:J

    iget-object v1, v3, Lx4/k;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v3, Lx4/k;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0b00e8

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    monitor-enter v3

    const-wide/16 v11, 0x1

    :try_start_4
    iput-wide v11, v3, Lx4/l;->S:J

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v3}, Landroidx/databinding/e;->c0()V

    return-object v3

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_live_mobile is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object v0, v9

    move-wide/from16 v37, v12

    move-wide v11, v10

    move-wide/from16 v9, v37

    const-string v13, "layout/fragment_live_0"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    new-instance v1, Lx4/j;

    sget-object v13, Lx4/j;->T:Landroid/util/SparseIntArray;

    invoke-static {v2, v4, v13}, Landroidx/databinding/e;->b0(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v13, v4, v35

    check-cast v13, Landroidx/appcompat/widget/AppCompatButton;

    aget-object v34, v4, v34

    check-cast v34, Landroidx/appcompat/widget/AppCompatButton;

    aget-object v33, v4, v33

    check-cast v33, Landroid/widget/FrameLayout;

    aget-object v3, v4, v3

    check-cast v3, Landroid/widget/EditText;

    aget-object v32, v4, v32

    check-cast v32, Landroid/widget/EditText;

    aget-object v31, v4, v31

    check-cast v31, Landroid/view/View;

    aget-object v30, v4, v30

    check-cast v30, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v29, v4, v29

    check-cast v29, Landroidx/constraintlayout/widget/Guideline;

    aget-object v28, v4, v28

    check-cast v28, Landroidx/constraintlayout/widget/Guideline;

    aget-object v27, v4, v27

    check-cast v27, Landroid/widget/ImageView;

    aget-object v26, v4, v26

    check-cast v26, Landroid/widget/ImageView;

    aget-object v25, v4, v25

    check-cast v25, Landroid/widget/ImageView;

    aget-object v24, v4, v24

    check-cast v24, Landroid/widget/LinearLayout;

    aget-object v23, v4, v23

    check-cast v23, Landroid/widget/LinearLayout;

    aget-object v22, v4, v22

    check-cast v22, Landroid/widget/LinearLayout;

    aget-object v21, v4, v21

    check-cast v21, Landroid/widget/LinearLayout;

    aget-object v20, v4, v20

    check-cast v20, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v19, v4, v19

    check-cast v19, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v18, v4, v18

    check-cast v18, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v17, v4, v17

    check-cast v17, Landroidx/media3/ui/PlayerView;

    aget-object v5, v4, v5

    check-cast v5, Lib/player/base/view/LiveVerticalGridView;

    aget-object v19, v4, p2

    check-cast v19, Lib/player/base/view/LiveVerticalGridView;

    aget-object v7, v4, v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    aget-object v8, v4, v8

    check-cast v8, Landroid/widget/TextView;

    aget-object v6, v4, v6

    check-cast v6, Landroid/widget/TextView;

    aget-object v20, v4, v36

    check-cast v20, Landroid/widget/TextView;

    aget-object v14, v4, v14

    check-cast v14, Landroidx/constraintlayout/widget/Guideline;

    aget-object v14, v4, v15

    check-cast v14, Landroidx/constraintlayout/widget/Guideline;

    aget-object v4, v4, v16

    check-cast v4, Landroidx/constraintlayout/widget/Guideline;

    move-object v4, v5

    move-object v5, v3

    move-object v3, v13

    move-object v13, v4

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v12, v17

    move-object/from16 v11, v18

    move-object/from16 v14, v19

    move-object/from16 v18, v20

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    move-object/from16 v8, v30

    move-object/from16 v7, v31

    move-object/from16 v4, v34

    move-object/from16 v17, v6

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v18}, Lx4/i;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/media3/ui/PlayerView;Lib/player/base/view/LiveVerticalGridView;Lib/player/base/view/LiveVerticalGridView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object v3, v1

    const-wide/16 v9, -0x1

    iput-wide v9, v3, Lx4/j;->S:J

    iget-object v1, v3, Lx4/i;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v3, Lx4/i;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0b00e8

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    monitor-enter v3

    const-wide/16 v11, 0x1

    :try_start_6
    iput-wide v11, v3, Lx4/j;->S:J

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {v3}, Landroidx/databinding/e;->c0()V

    return-object v3

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_live is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    const-string v0, "layout/fragment_home_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lx4/h;

    invoke-direct {v0, v2}, Lx4/h;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_home is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    const-string v0, "layout/fragment_global_search_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lx4/f;

    invoke-direct {v0, v2}, Lx4/f;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_global_search is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    const-string v0, "layout/fragment_epg_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lx4/d;

    invoke-direct {v0, v2}, Lx4/d;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_epg is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    const-string v0, "layout/fragment_catch_up_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lx4/b;

    invoke-direct {v0, v2}, Lx4/b;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The tag for fragment_catch_up is invalid. Received: "

    invoke-static {v1, v2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "view must have a tag"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c([Landroid/view/View;I)Landroidx/databinding/e;
    .locals 1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lib/player/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
