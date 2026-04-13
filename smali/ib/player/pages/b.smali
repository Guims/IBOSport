.class public final synthetic Lib/player/pages/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/MainActivity;


# direct methods
.method public native synthetic constructor <init>(Lib/player/pages/MainActivity;I)V
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lib/player/pages/b;->b:I

    const v2, 0x7f0b01ab

    const/4 v3, 0x0

    const v4, 0x7f0b01aa

    iget-object v5, v0, Lib/player/pages/b;->q:Lib/player/pages/MainActivity;

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v5, Lib/player/pages/MainActivity;->k0:Lib/player/base/view/LiveVerticalGridView;

    iget-object v7, v5, Lib/player/pages/MainActivity;->g0:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x4

    const/16 v16, -0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v8, "settings"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v16, v9

    goto :goto_0

    :sswitch_1
    const-string v8, "live_tv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v16, v10

    goto :goto_0

    :sswitch_2
    const-string v8, "films"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v16, v11

    goto :goto_0

    :sswitch_3
    const-string v8, "catch_up"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v16, v15

    goto :goto_0

    :sswitch_4
    const-string v8, "exit"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v16, v12

    goto :goto_0

    :sswitch_5
    const-string v8, "series"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v16, v13

    goto :goto_0

    :sswitch_6
    const-string v8, "search"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    :cond_6
    move/from16 v16, v14

    goto :goto_0

    :sswitch_7
    const-string v8, "reload"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_0

    :cond_7
    move/from16 v16, v6

    :goto_0
    packed-switch v16, :pswitch_data_1

    move v6, v14

    goto :goto_1

    :pswitch_0
    move v6, v9

    goto :goto_1

    :pswitch_1
    move v6, v13

    goto :goto_1

    :pswitch_2
    move v6, v15

    goto :goto_1

    :pswitch_3
    move v6, v12

    goto :goto_1

    :pswitch_4
    const/16 v6, 0x8

    goto :goto_1

    :pswitch_5
    move v6, v11

    goto :goto_1

    :pswitch_6
    move v6, v10

    :goto_1
    :pswitch_7
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v1, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_8
    iget-object v1, v5, Lib/player/pages/MainActivity;->m0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lu/n;

    invoke-direct {v1}, Lu/n;-><init>()V

    iget-object v6, v5, Lib/player/pages/MainActivity;->l0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v6}, Lu/n;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v1, v4, v3}, Lu/n;->k(IF)V

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2, v3}, Lu/n;->k(IF)V

    iget-object v2, v5, Lib/player/pages/MainActivity;->l0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    iget-object v2, v5, Lib/player/pages/MainActivity;->l0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Lu/n;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    :pswitch_8
    iget-object v1, v5, Lib/player/pages/MainActivity;->m0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lu/n;

    invoke-direct {v1}, Lu/n;-><init>()V

    iget-object v7, v5, Lib/player/pages/MainActivity;->l0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v7}, Lu/n;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v7, -0x40b33333    # -0.8f

    invoke-virtual {v1, v4, v7}, Lu/n;->k(IF)V

    invoke-virtual {v1, v2, v3}, Lu/n;->k(IF)V

    iget-object v2, v5, Lib/player/pages/MainActivity;->l0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    iget-object v2, v5, Lib/player/pages/MainActivity;->l0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Lu/n;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-static {v5}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v6, v5, Lib/player/pages/MainActivity;->z0:Z

    iput-boolean v6, v5, Lib/player/pages/MainActivity;->A0:Z

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x37b57e67 -> :sswitch_7
        -0x36059a58 -> :sswitch_6
        -0x35fe0189 -> :sswitch_5
        0x2fb91e -> :sswitch_4
        0x2e6c69f -> :sswitch_3
        0x5cebb6f -> :sswitch_2
        0xafc0ab5 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
