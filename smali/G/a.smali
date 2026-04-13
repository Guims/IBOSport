.class public final LG/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final q:I

.field public final r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LG/a;->b:I

    iput-object p3, p0, LG/a;->r:Ljava/lang/Object;

    iput p1, p0, LG/a;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, LG/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, Lcom/bumptech/glide/d;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, LG/a;->r:Ljava/lang/Object;

    iput p2, p0, LG/a;->q:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, LG/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG/a;->r:Ljava/lang/Object;

    check-cast v0, Lw2/j;

    iget v1, p0, LG/a;->q:I

    invoke-virtual {v0, v1}, Lw2/j;->i(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LG/a;->r:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/datepicker/k;

    iget-object v0, v0, Lcom/google/android/material/datepicker/k;->q0:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, LG/a;->q:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h0(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, LG/a;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/SearchBar;

    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->J:Landroid/util/SparseIntArray;

    iget v2, p0, LG/a;->q:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-object v3, v0, Landroidx/leanback/widget/SearchBar;->I:Landroid/media/SoundPool;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void

    :pswitch_2
    iget-object v0, p0, LG/a;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, LG/a;->q:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/h;

    invoke-virtual {v2}, Landroidx/emoji2/text/h;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_3
    iget-object v0, p0, LG/a;->r:Ljava/lang/Object;

    check-cast v0, Le4/c;

    iget-object v0, v0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, LA/b;

    if-eqz v0, :cond_2

    iget v1, p0, LG/a;->q:I

    invoke-virtual {v0, v1}, LA/b;->g(I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
