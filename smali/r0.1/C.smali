.class public final Lr0/C;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lr0/C;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lr0/C;->b:Ljava/lang/Object;

    sget-object p1, Ly0/j;->b:Ly0/j;

    iput-object p1, p0, Lr0/C;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/media/AudioTrack;Lr0/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr0/C;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/C;->b:Ljava/lang/Object;

    iput-object p2, p0, Lr0/C;->c:Ljava/lang/Object;

    new-instance p2, Lr0/E;

    invoke-direct {p2, p0}, Lr0/E;-><init>(Lr0/C;)V

    iput-object p2, p0, Lr0/C;->d:Ljava/lang/Object;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Lr0/E;

    invoke-virtual {p1, v0, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayDeque;Ljava/io/BufferedReader;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lr0/C;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/C;->c:Ljava/lang/Object;

    iput-object p2, p0, Lr0/C;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lr0/C;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/C;->b:Ljava/lang/Object;

    iput-object p2, p0, Lr0/C;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr0/C;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/16 p2, 0x8

    iput p2, p0, Lr0/C;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p3, p0, Lr0/C;->c:Ljava/lang/Object;

    sget-object p3, LJ2/a;->a:LJ2/a;

    iput-object p3, p0, Lr0/C;->d:Ljava/lang/Object;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lr0/C;->b:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-static {p1}, LB/f;->k(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lr/e;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lr0/C;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    new-instance v0, Ls/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr0/C;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr0/C;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr0/G;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lr0/C;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/C;->d:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lr0/C;->b:Ljava/lang/Object;

    new-instance p1, Lr0/F;

    invoke-direct {p1, p0}, Lr0/F;-><init>(Lr0/C;)V

    iput-object p1, p0, Lr0/C;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv1/x;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lr0/C;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/C;->b:Ljava/lang/Object;

    new-instance p1, LC5/a;

    invoke-direct {p1}, LC5/a;-><init>()V

    iput-object p1, p0, Lr0/C;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr0/C;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Li0/d;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lr0/C;->a:I

    new-instance v0, Lr0/M;

    invoke-direct {v0}, Lr0/M;-><init>()V

    new-instance v1, Li0/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Li0/g;->c:F

    iput v2, v1, Li0/g;->d:F

    sget-object v2, Li0/b;->e:Li0/b;

    iput-object v2, v1, Li0/g;->e:Li0/b;

    iput-object v2, v1, Li0/g;->f:Li0/b;

    iput-object v2, v1, Li0/g;->g:Li0/b;

    iput-object v2, v1, Li0/g;->h:Li0/b;

    sget-object v2, Li0/d;->a:Ljava/nio/ByteBuffer;

    iput-object v2, v1, Li0/g;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, v1, Li0/g;->l:Ljava/nio/ShortBuffer;

    iput-object v2, v1, Li0/g;->m:Ljava/nio/ByteBuffer;

    const/4 v2, -0x1

    iput v2, v1, Li0/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Li0/d;

    iput-object v2, p0, Lr0/C;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lr0/C;->c:Ljava/lang/Object;

    iput-object v1, p0, Lr0/C;->d:Ljava/lang/Object;

    array-length v3, p1

    aput-object v0, v2, v3

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lr0/C;->g(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v1, LC5/a;

    invoke-virtual {v1, p2, p3}, LC5/a;->t(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lr0/C;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object p1

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Lv1/y;->j(Lv1/X;)V

    :cond_2
    return-void
.end method

.method public b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lr0/C;->g(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v1, LC5/a;

    invoke-virtual {v1, p2, p4}, LC5/a;->t(IZ)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Lr0/C;->k(Landroid/view/View;)V

    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lv1/X;->k()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p4}, Lv1/X;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget v1, p4, Lv1/X;->j:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p4, Lv1/X;->j:I

    :cond_4
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(Ljava/lang/String;JIJ)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lr0/C;->g(I)I

    move-result p1

    iget-object v0, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v0, LC5/a;

    invoke-virtual {v0, p1}, LC5/a;->v(I)Z

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lv1/X;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lv1/X;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called detach on an already detached child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lv1/X;->a(I)V

    :cond_2
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lr0/C;->g(I)I

    move-result p1

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public g(I)I
    .locals 5

    iget-object v0, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v0, LC5/a;

    const/4 v1, -0x1

    if-gez p1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v2, Lv1/x;

    iget-object v2, v2, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, LC5/a;->q(I)I

    move-result v4

    sub-int v4, v3, v4

    sub-int v4, p1, v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, LC5/a;->s(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    add-int/2addr v3, v4

    goto :goto_0

    :cond_3
    return v1
.end method

.method public h(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lr0/C;->d:Ljava/lang/Object;

    return v2

    :cond_1
    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr0/C;->d:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr0/C;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Lv1/X;->q:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iput v2, p1, Lv1/X;->p:I

    goto :goto_0

    :cond_0
    sget-object v2, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    iput v2, p1, Lv1/X;->p:I

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->N()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    iput v3, p1, Lv1/X;->q:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->J0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object p1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v0, LC5/a;

    iget-object v1, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v1, Lv1/x;

    iget-object v1, v1, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, LC5/a;->s(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p1}, LC5/a;->q(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public m(ILr/d;Lu/f;)Z
    .locals 6

    iget-object v0, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v0, Ls/b;

    iget-object v1, p2, Lr/d;->p0:[I

    iget-object v2, p2, Lr/d;->t:[I

    const/4 v3, 0x0

    aget v4, v1, v3

    iput v4, v0, Ls/b;->a:I

    const/4 v4, 0x1

    aget v1, v1, v4

    iput v1, v0, Ls/b;->b:I

    invoke-virtual {p2}, Lr/d;->q()I

    move-result v1

    iput v1, v0, Ls/b;->c:I

    invoke-virtual {p2}, Lr/d;->k()I

    move-result v1

    iput v1, v0, Ls/b;->d:I

    iput-boolean v3, v0, Ls/b;->i:Z

    iput p1, v0, Ls/b;->j:I

    iget p1, v0, Ls/b;->a:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iget v5, v0, Ls/b;->b:I

    if-ne v5, v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz p1, :cond_2

    iget p1, p2, Lr/d;->W:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_2

    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    if-eqz v1, :cond_3

    iget v1, p2, Lr/d;->W:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    const/4 v5, 0x4

    if-eqz p1, :cond_4

    aget p1, v2, v3

    if-ne p1, v5, :cond_4

    iput v4, v0, Ls/b;->a:I

    :cond_4
    if-eqz v1, :cond_5

    aget p1, v2, v4

    if-ne p1, v5, :cond_5

    iput v4, v0, Ls/b;->b:I

    :cond_5
    invoke-virtual {p3, p2, v0}, Lu/f;->b(Lr/d;Ls/b;)V

    iget p1, v0, Ls/b;->e:I

    invoke-virtual {p2, p1}, Lr/d;->O(I)V

    iget p1, v0, Ls/b;->f:I

    invoke-virtual {p2, p1}, Lr/d;->L(I)V

    iget-boolean p1, v0, Ls/b;->h:Z

    iput-boolean p1, p2, Lr/d;->E:Z

    iget p1, v0, Ls/b;->g:I

    invoke-virtual {p2, p1}, Lr/d;->I(I)V

    iput v3, v0, Ls/b;->j:I

    iget-boolean p1, v0, Ls/b;->i:Z

    return p1
.end method

.method public n()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lr0/C;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lr0/C;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public o(Landroid/media/MediaCodec;)V
    .locals 1

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/c;->e(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)V

    :cond_0
    return-void
.end method

.method public p(Lr/e;III)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lr/d;->b0:I

    iget v1, p1, Lr/d;->c0:I

    const/4 v2, 0x0

    iput v2, p1, Lr/d;->b0:I

    iput v2, p1, Lr/d;->c0:I

    invoke-virtual {p1, p3}, Lr/d;->O(I)V

    invoke-virtual {p1, p4}, Lr/d;->L(I)V

    if-gez v0, :cond_0

    iput v2, p1, Lr/d;->b0:I

    goto :goto_0

    :cond_0
    iput v0, p1, Lr/d;->b0:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, Lr/d;->c0:I

    goto :goto_1

    :cond_1
    iput v1, p1, Lr/d;->c0:I

    :goto_1
    iget-object p1, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast p1, Lr/e;

    iput p2, p1, Lr/e;->t0:I

    invoke-virtual {p1}, Lr/e;->U()V

    return-void
.end method

.method public q(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Lv1/x;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p1, Lv1/X;->p:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->N()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p1, Lv1/X;->q:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->J0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lv1/X;->a:Landroid/view/View;

    sget-object v2, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lv1/X;->p:I

    :cond_1
    return-void
.end method

.method public r(Lr/e;)V
    .locals 9

    iget-object v0, p0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    iget-object v5, p1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/d;

    iget-object v6, v5, Lr/d;->p0:[I

    aget v7, v6, v2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    aget v4, v6, v4

    if-ne v4, v8, :cond_1

    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lr/e;->s0:Ls/e;

    iput-boolean v4, p1, Ls/e;->b:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lr0/C;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v1, LC5/a;

    invoke-virtual {v1}, LC5/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
