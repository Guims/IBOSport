.class public final LK1/c;
.super Ljava/lang/Object;

# interfaces
.implements LF/a;
.implements Lj4/b;
.implements Lf1/m;
.implements Ll2/b;


# instance fields
.field public final synthetic b:I

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LK1/c;->b:I

    sparse-switch p1, :sswitch_data_0

    new-instance p1, LG/j;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LG/j;-><init>(I)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance v0, LA4/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ln/e;

    invoke-direct {p1}, Ln/j;-><init>()V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    new-instance p1, Ln/i;

    invoke-direct {p1}, Ln/i;-><init>()V

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    new-instance p1, Ln/e;

    invoke-direct {p1}, Ln/j;-><init>()V

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LI/c;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, LI/c;-><init>(I)V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance p1, Ln/j;

    invoke-direct {p1}, Ln/j;-><init>()V

    iput-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    return-void

    :sswitch_3
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    return-void

    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lk0/u;

    invoke-direct {p1}, Lk0/u;-><init>()V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance p1, Lk0/u;

    invoke-direct {p1}, Lk0/u;-><init>()V

    iput-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    new-instance p1, Li1/a;

    invoke-direct {p1}, Li1/a;-><init>()V

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    return-void

    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/leanback/widget/W;

    invoke-direct {p1}, Landroidx/leanback/widget/W;-><init>()V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance v0, Landroidx/leanback/widget/W;

    invoke-direct {v0}, Landroidx/leanback/widget/W;-><init>()V

    iput-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    iput-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    return-void

    :sswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0xd -> :sswitch_4
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, LK1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LT/I;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LK1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    invoke-static {}, Lu5/e;->a()Lu5/d;

    move-result-object p1

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance p1, Lm5/l;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lm5/a0;-><init>(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm5/a0;->D(Lm5/Q;)V

    iput-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    invoke-static {p2}, LT4/g;->E(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LV4/i;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, LK1/c;->b:I

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    new-instance p1, LE1/v;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, LE1/v;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, LK1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    iput-object p2, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    new-instance p1, Ln/j;

    invoke-direct {p1}, Ln/j;-><init>()V

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;LY/b;)V
    .locals 7

    const/4 v0, 0x5

    iput v0, p0, LK1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    iput-object p2, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance p1, Landroidx/emoji2/text/r;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/r;-><init>(I)V

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    const/4 p1, 0x6

    invoke-virtual {p2, p1}, LJ/E;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p2, LJ/E;->a:I

    add-int/2addr v0, v2

    iget-object v2, p2, LJ/E;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p2, LJ/E;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    invoke-virtual {p2, p1}, LJ/E;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    iget v0, p2, LJ/E;->a:I

    add-int/2addr p1, v0

    iget-object v0, p2, LJ/E;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p2, LJ/E;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_6

    new-instance v0, Landroidx/emoji2/text/u;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/u;-><init>(LK1/c;I)V

    invoke-virtual {v0}, Landroidx/emoji2/text/u;->b()LY/a;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, LJ/E;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, LJ/E;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, LJ/E;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    iget-object v3, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v3, [C

    mul-int/lit8 v4, p2, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    invoke-virtual {v0}, Landroidx/emoji2/text/u;->b()LY/a;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, LJ/E;->a(I)I

    move-result v4

    if-eqz v4, :cond_3

    iget v5, v2, LJ/E;->a:I

    add-int/2addr v4, v5

    iget-object v5, v2, LJ/E;->d:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v2, v2, LJ/E;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const/4 v4, 0x1

    if-lez v2, :cond_4

    move v2, v4

    goto :goto_5

    :cond_4
    move v2, v1

    :goto_5
    const-string v5, "invalid metadata codepoint length"

    invoke-static {v5, v2}, Lcom/bumptech/glide/d;->f(Ljava/lang/String;Z)V

    iget-object v2, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/r;

    invoke-virtual {v0}, Landroidx/emoji2/text/u;->b()LY/a;

    move-result-object v5

    invoke-virtual {v5, v3}, LJ/E;->a(I)I

    move-result v3

    if-eqz v3, :cond_5

    iget v6, v5, LJ/E;->a:I

    add-int/2addr v3, v6

    iget-object v6, v5, LJ/E;->d:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    add-int/2addr v6, v3

    iget-object v3, v5, LJ/E;->d:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    goto :goto_6

    :cond_5
    move v3, v1

    :goto_6
    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v1, v3}, Landroidx/emoji2/text/r;->a(Landroidx/emoji2/text/u;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/t0;[Z)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LK1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    iput-object p2, p0, LK1/c;->r:Ljava/lang/Object;

    iget p1, p1, Landroidx/media3/exoplayer/source/t0;->a:I

    new-array p2, p1, [Z

    iput-object p2, p0, LK1/c;->s:Ljava/lang/Object;

    new-array p1, p1, [Z

    iput-object p1, p0, LK1/c;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/z;Lio/realm/internal/OsSchemaInfo;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, LK1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    iput-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    iput-object p2, p0, LK1/c;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, LK1/c;->b:I

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    iput-object p2, p0, LK1/c;->r:Ljava/lang/Object;

    iput-object p3, p0, LK1/c;->s:Ljava/lang/Object;

    iput-object p4, p0, LK1/c;->t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lm5/u;LT/F;LT/d;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, LK1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    iput-object p3, p0, LK1/c;->r:Ljava/lang/Object;

    const p3, 0x7fffffff

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p3, v0, v1}, Lo5/i;->a(III)Lo5/b;

    move-result-object p3

    iput-object p3, p0, LK1/c;->s:Ljava/lang/Object;

    new-instance p3, LL2/o;

    const/16 v1, 0xb

    invoke-direct {p3, v1}, LL2/o;-><init>(I)V

    iput-object p3, p0, LK1/c;->t:Ljava/lang/Object;

    invoke-interface {p1}, Lm5/u;->d()LV4/i;

    move-result-object p1

    sget-object p3, Lm5/t;->q:Lm5/t;

    invoke-interface {p1, p3}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object p1

    check-cast p1, Lm5/Q;

    if-eqz p1, :cond_0

    new-instance p3, LT/N;

    invoke-direct {p3, p2, p0}, LT/N;-><init>(LT/F;LK1/c;)V

    check-cast p1, Lm5/a0;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2, p3}, Lm5/a0;->E(ZZLd5/l;)Lm5/D;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lp3/Y;Ll0/h;Ll0/h;Ll0/h;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LK1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lp3/H;->q:Lp3/F;

    sget-object p1, Lp3/Y;->t:Lp3/Y;

    :goto_0
    iput-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    iput-object p2, p0, LK1/c;->r:Ljava/lang/Object;

    iput-object p3, p0, LK1/c;->s:Ljava/lang/Object;

    iput-object p4, p0, LK1/c;->t:Ljava/lang/Object;

    return-void
.end method

.method public static final a(LK1/c;Ljava/util/ArrayList;I)Landroid/os/Message;
    .locals 5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    check-cast v3, Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    :goto_1
    move-object p0, p1

    goto :goto_2

    :cond_3
    move-object p2, p1

    check-cast p2, Landroid/os/Message;

    invoke-virtual {p2}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    move-object p1, p2

    move-wide v0, v2

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :goto_2
    check-cast p0, Landroid/os/Message;

    return-object p0
.end method

.method public static y(JLjava/util/HashMap;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-gtz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)Lt0/b;
    .locals 8

    iget-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, LK1/c;->f(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lp3/q;->i(Ljava/util/AbstractCollection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt0/b;

    return-object p1

    :cond_0
    new-instance v1, LD0/c;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LD0/c;-><init>(I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt0/b;

    iget v3, v3, Lt0/b;->c:I

    move v4, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/b;

    iget v6, v5, Lt0/b;->c:I

    if-eq v3, v6, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt0/b;

    return-object p1

    :cond_1
    new-instance v6, Landroid/util/Pair;

    iget-object v7, v5, Lt0/b;->b:Ljava/lang/String;

    iget v5, v5, Lt0/b;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt0/b;

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    move v3, v2

    move v4, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/b;

    iget v5, v5, Lt0/b;->d:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v4, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/b;

    iget v6, v5, Lt0/b;->d:I

    add-int/2addr v4, v6

    if-ge v3, v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lp3/q;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lt0/b;

    :goto_3
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :cond_6
    return-object v3
.end method

.method public B(I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, p1, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    const-string v1, "obtain(null, messageCode, 0, 0)"

    invoke-static {p1, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast p1, LV4/i;

    invoke-static {p1}, Lm5/w;->a(LV4/i;)Lr5/e;

    move-result-object p1

    new-instance v1, LT/d;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v0, v2, v3}, LT/d;-><init>(Ljava/lang/Object;Ljava/io/Serializable;LV4/d;I)V

    invoke-static {p1, v1}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    return-void
.end method

.method public declared-synchronized c(LI1/f;LK1/w;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, LK1/b;

    iget-object v1, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v1}, LK1/b;-><init>(LI1/f;LK1/w;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p2, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK1/b;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p1, LK1/b;->c:LK1/D;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d([BIILf1/l;Lk0/h;)V
    .locals 39

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Li1/a;

    iget-object v3, v0, LK1/c;->q:Ljava/lang/Object;

    check-cast v3, Lk0/u;

    add-int v4, v1, p3

    move-object/from16 v5, p1

    invoke-virtual {v3, v5, v4}, Lk0/u;->E([BI)V

    invoke-virtual {v3, v1}, Lk0/u;->G(I)V

    iget-object v1, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Lk0/u;

    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v4

    const/16 v5, 0xff

    if-lez v4, :cond_1

    iget-object v4, v3, Lk0/u;->a:[B

    iget v6, v3, Lk0/u;->b:I

    aget-byte v4, v4, v6

    and-int/2addr v4, v5

    const/16 v6, 0x78

    if-ne v4, v6, :cond_1

    iget-object v4, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast v4, Ljava/util/zip/Inflater;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v4, v0, LK1/c;->t:Ljava/lang/Object;

    :cond_0
    iget-object v4, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast v4, Ljava/util/zip/Inflater;

    invoke-static {v3, v1, v4}, Lk0/C;->K(Lk0/u;Lk0/u;Ljava/util/zip/Inflater;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lk0/u;->a:[B

    iget v1, v1, Lk0/u;->c:I

    invoke-virtual {v3, v4, v1}, Lk0/u;->E([BI)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v2, Li1/a;->d:I

    iget-object v4, v2, Li1/a;->b:[I

    iget-object v6, v2, Li1/a;->a:Lk0/u;

    iput v1, v2, Li1/a;->e:I

    iput v1, v2, Li1/a;->f:I

    iput v1, v2, Li1/a;->g:I

    iput v1, v2, Li1/a;->h:I

    iput v1, v2, Li1/a;->i:I

    invoke-virtual {v6, v1}, Lk0/u;->D(I)V

    iput-boolean v1, v2, Li1/a;->c:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v7

    const/4 v9, 0x3

    if-lt v7, v9, :cond_16

    iget v7, v3, Lk0/u;->c:I

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v10

    invoke-virtual {v3}, Lk0/u;->A()I

    move-result v11

    iget v12, v3, Lk0/u;->b:I

    add-int/2addr v12, v11

    if-le v12, v7, :cond_2

    invoke-virtual {v3, v7}, Lk0/u;->G(I)V

    move v7, v1

    move v15, v5

    move-object v1, v6

    move-object/from16 p1, v8

    const/4 v13, 0x0

    goto/16 :goto_d

    :cond_2
    const/16 v7, 0x80

    if-eq v10, v7, :cond_c

    packed-switch v10, :pswitch_data_0

    :cond_3
    :goto_1
    move v15, v5

    move-object/from16 v16, v6

    move-object/from16 p1, v8

    goto/16 :goto_4

    :pswitch_0
    const/16 v7, 0x13

    if-ge v11, v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lk0/u;->A()I

    move-result v7

    iput v7, v2, Li1/a;->d:I

    invoke-virtual {v3}, Lk0/u;->A()I

    move-result v7

    iput v7, v2, Li1/a;->e:I

    const/16 v7, 0xb

    invoke-virtual {v3, v7}, Lk0/u;->H(I)V

    invoke-virtual {v3}, Lk0/u;->A()I

    move-result v7

    iput v7, v2, Li1/a;->f:I

    invoke-virtual {v3}, Lk0/u;->A()I

    move-result v7

    iput v7, v2, Li1/a;->g:I

    goto :goto_1

    :pswitch_1
    const/4 v10, 0x4

    if-ge v11, v10, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v9}, Lk0/u;->H(I)V

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v9

    and-int/2addr v7, v9

    if-eqz v7, :cond_6

    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    move v14, v1

    :goto_2
    add-int/lit8 v7, v11, -0x4

    if-eqz v14, :cond_9

    const/4 v9, 0x7

    if-ge v7, v9, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lk0/u;->x()I

    move-result v7

    if-ge v7, v10, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Lk0/u;->A()I

    move-result v9

    iput v9, v2, Li1/a;->h:I

    invoke-virtual {v3}, Lk0/u;->A()I

    move-result v9

    iput v9, v2, Li1/a;->i:I

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v6, v7}, Lk0/u;->D(I)V

    add-int/lit8 v7, v11, -0xb

    :cond_9
    iget v9, v6, Lk0/u;->b:I

    iget v10, v6, Lk0/u;->c:I

    if-ge v9, v10, :cond_3

    if-lez v7, :cond_3

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v10, v6, Lk0/u;->a:[B

    invoke-virtual {v3, v10, v9, v7}, Lk0/u;->e([BII)V

    add-int/2addr v9, v7

    invoke-virtual {v6, v9}, Lk0/u;->G(I)V

    goto :goto_1

    :pswitch_2
    rem-int/lit8 v9, v11, 0x5

    const/4 v10, 0x2

    if-eq v9, v10, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v3, v10}, Lk0/u;->H(I)V

    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v11, v11, 0x5

    move v9, v1

    :goto_3
    if-ge v9, v11, :cond_b

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v10

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v15

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v16

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v17

    invoke-virtual {v3}, Lk0/u;->u()I

    move-result v18

    move/from16 p2, v7

    move-object/from16 p1, v8

    int-to-double v7, v15

    add-int/lit8 v15, v16, -0x80

    int-to-double v13, v15

    const-wide v15, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v15, v13

    move-object/from16 v19, v2

    add-double v1, v15, v7

    double-to-int v1, v1

    add-int/lit8 v2, v17, -0x80

    move-object/from16 v16, v6

    int-to-double v5, v2

    const-wide v21, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v21, v21, v5

    sub-double v21, v7, v21

    const-wide v23, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v13, v13, v23

    sub-double v13, v21, v13

    double-to-int v2, v13

    const-wide v13, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v5, v13

    add-double/2addr v5, v7

    double-to-int v5, v5

    shl-int/lit8 v6, v18, 0x18

    const/4 v7, 0x0

    const/16 v15, 0xff

    invoke-static {v1, v7, v15}, Lk0/C;->i(III)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v6

    invoke-static {v2, v7, v15}, Lk0/C;->i(III)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-static {v5, v7, v15}, Lk0/C;->i(III)I

    move-result v2

    or-int/2addr v1, v2

    aput v1, v4, v10

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p1

    move/from16 v7, p2

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v2, v19

    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    move v15, v5

    move-object/from16 v16, v6

    move-object/from16 p1, v8

    const/4 v1, 0x1

    iput-boolean v1, v2, Li1/a;->c:Z

    :goto_4
    move-object/from16 v1, v16

    const/4 v7, 0x0

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_c
    move v15, v5

    move-object/from16 v16, v6

    move-object/from16 p1, v8

    iget v1, v2, Li1/a;->d:I

    if-eqz v1, :cond_13

    iget v1, v2, Li1/a;->e:I

    if-eqz v1, :cond_13

    iget v1, v2, Li1/a;->h:I

    if-eqz v1, :cond_13

    iget v1, v2, Li1/a;->i:I

    if-eqz v1, :cond_13

    move-object/from16 v1, v16

    iget v5, v1, Lk0/u;->c:I

    if-eqz v5, :cond_14

    iget v6, v1, Lk0/u;->b:I

    if-ne v6, v5, :cond_14

    iget-boolean v5, v2, Li1/a;->c:Z

    if-nez v5, :cond_d

    goto/16 :goto_a

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lk0/u;->G(I)V

    iget v5, v2, Li1/a;->h:I

    iget v6, v2, Li1/a;->i:I

    mul-int/2addr v5, v6

    new-array v6, v5, [I

    const/4 v7, 0x0

    :cond_e
    :goto_5
    if-ge v7, v5, :cond_12

    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v8

    if-eqz v8, :cond_f

    add-int/lit8 v9, v7, 0x1

    aget v8, v4, v8

    aput v8, v6, v7

    :goto_6
    move v7, v9

    goto :goto_5

    :cond_f
    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v8

    if-eqz v8, :cond_e

    and-int/lit8 v9, v8, 0x40

    if-nez v9, :cond_10

    and-int/lit8 v9, v8, 0x3f

    goto :goto_7

    :cond_10
    and-int/lit8 v9, v8, 0x3f

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v10

    or-int/2addr v9, v10

    :goto_7
    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_11

    const/16 v20, 0x0

    aget v8, v4, v20

    goto :goto_8

    :cond_11
    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v8

    aget v8, v4, v8

    :goto_8
    add-int/2addr v9, v7

    invoke-static {v6, v7, v9, v8}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_6

    :cond_12
    iget v5, v2, Li1/a;->h:I

    iget v7, v2, Li1/a;->i:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    iget v5, v2, Li1/a;->f:I

    int-to-float v5, v5

    iget v6, v2, Li1/a;->d:I

    int-to-float v6, v6

    div-float v29, v5, v6

    iget v5, v2, Li1/a;->g:I

    int-to-float v5, v5

    iget v7, v2, Li1/a;->e:I

    int-to-float v7, v7

    div-float v26, v5, v7

    iget v5, v2, Li1/a;->h:I

    int-to-float v5, v5

    div-float v33, v5, v6

    iget v5, v2, Li1/a;->i:I

    int-to-float v5, v5

    div-float v34, v5, v7

    new-instance v21, Lj0/b;

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/high16 v31, -0x80000000

    const v32, -0x800001

    const/16 v35, 0x0

    const/high16 v36, -0x1000000

    const/16 v38, 0x0

    move-object/from16 v23, v22

    move-object/from16 v24, v22

    move/from16 v37, v31

    invoke-direct/range {v21 .. v38}, Lj0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v13, v21

    :goto_9
    const/4 v7, 0x0

    goto :goto_b

    :cond_13
    move-object/from16 v1, v16

    :cond_14
    :goto_a
    const/4 v13, 0x0

    goto :goto_9

    :goto_b
    iput v7, v2, Li1/a;->d:I

    iput v7, v2, Li1/a;->e:I

    iput v7, v2, Li1/a;->f:I

    iput v7, v2, Li1/a;->g:I

    iput v7, v2, Li1/a;->h:I

    iput v7, v2, Li1/a;->i:I

    invoke-virtual {v1, v7}, Lk0/u;->D(I)V

    iput-boolean v7, v2, Li1/a;->c:Z

    :goto_c
    invoke-virtual {v3, v12}, Lk0/u;->G(I)V

    :goto_d
    move-object/from16 v8, p1

    if-eqz v13, :cond_15

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object v6, v1

    move v1, v7

    move v5, v15

    goto/16 :goto_0

    :cond_16
    new-instance v7, Lf1/a;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v7 .. v12}, Lf1/a;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v1, p5

    invoke-interface {v1, v7}, Lk0/h;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroidx/fragment/app/t;)V
    .locals 3

    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/t;->z:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, LK1/c;->y(JLjava/util/HashMap;)V

    iget-object v3, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0, v1, v3}, LK1/c;->y(JLjava/util/HashMap;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt0/b;

    iget-object v5, v4, Lt0/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Lt0/b;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public g(LK1/b;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, LK1/b;->a:LI1/f;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, LK1/b;->b:Z

    if-eqz v0, :cond_1

    iget-object v2, p1, LK1/b;->c:LK1/D;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, LK1/w;

    iget-object v5, p1, LK1/b;->a:LI1/f;

    iget-object v0, p0, LK1/c;->t:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LK1/o;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, LK1/w;-><init>(LK1/D;ZZLI1/f;LK1/v;)V

    iget-object v0, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, LK1/o;

    iget-object p1, p1, LK1/b;->a:LI1/f;

    invoke-virtual {v0, p1, v1}, LK1/o;->e(LI1/f;LK1/w;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LK1/c;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lq2/d;

    iget-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, LJ/l;

    invoke-virtual {v0}, LJ/l;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LJ/l;

    iget-object v0, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr2/c;

    new-instance v1, LK1/c;

    const/16 v6, 0x11

    invoke-direct/range {v1 .. v6}, LK1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Lj4/c;

    iget-object v0, v0, Lj4/c;->b:Ljava/lang/Object;

    check-cast v0, Lv3/e;

    iget-object v1, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/h;

    iget-object v2, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, LR4/a;

    invoke-interface {v2}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV4/i;

    iget-object v3, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v3, LR4/a;

    invoke-interface {v3}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg4/T;

    new-instance v4, Lg4/o;

    invoke-direct {v4, v0, v1, v2, v3}, Lg4/o;-><init>(Lv3/e;Lk4/h;LV4/i;Lg4/T;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Ln/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, LK1/c;->h(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This graph contains cyclic dependencies"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(LX4/c;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, LT/I;

    instance-of v1, p1, LT/i;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, LT/i;

    iget v2, v1, LT/i;->s:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, LT/i;->s:I

    goto :goto_0

    :cond_0
    new-instance v1, LT/i;

    invoke-direct {v1, p0, p1}, LT/i;-><init>(LK1/c;LX4/c;)V

    :goto_0
    iget-object p1, v1, LT/i;->q:Ljava/lang/Object;

    iget v2, v1, LT/i;->s:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v1, LT/i;->b:LK1/c;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, v1, LT/i;->b:LK1/c;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    sget-object v2, LW4/a;->b:LW4/a;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, LT/I;->g()LT/S;

    move-result-object p1

    new-instance v4, LT/l;

    const/4 v5, 0x0

    invoke-direct {v4, v0, p0, v5}, LT/l;-><init>(LT/I;LK1/c;LV4/d;)V

    iput-object p0, v1, LT/i;->b:LK1/c;

    iput v3, v1, LT/i;->s:I

    invoke-virtual {p1, v4, v1}, LT/S;->b(Ld5/l;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, p0

    :goto_1
    check-cast p1, LT/c;

    goto :goto_5

    :cond_6
    :goto_2
    iput-object p0, v1, LT/i;->b:LK1/c;

    iput v4, v1, LT/i;->s:I

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, LT/I;->f(LT/I;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    :goto_3
    return-object v2

    :cond_7
    move-object v0, p0

    :goto_4
    check-cast p1, LT/c;

    :goto_5
    iget-object v0, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, LT/I;

    iget-object v0, v0, LT/I;->h:LL2/o;

    invoke-virtual {v0, p1}, LL2/o;->F(LT/T;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public k(Ljava/lang/String;)Landroidx/fragment/app/t;
    .locals 1

    iget-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/S;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Ljava/lang/String;)Landroidx/fragment/app/t;
    .locals 3

    iget-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/S;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-object v2, v1, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iget-object v1, v1, Landroidx/fragment/app/K;->c:LK1/c;

    invoke-virtual {v1, p1}, LK1/c;->l(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Ljava/util/ArrayDeque;Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    invoke-virtual {p0}, LK1/c;->w()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n(LA5/g;)V
    .locals 1

    iget-object v0, p1, LA5/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0, p1}, LK1/c;->m(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    return-void
.end method

.method public o(Li/a;)Li/e;
    .locals 5

    iget-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/e;

    if-eqz v3, :cond_0

    iget-object v4, v3, Li/e;->b:Li/a;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Li/e;

    iget-object v2, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Li/e;-><init>(Landroid/content/Context;Li/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onCancel()V
    .locals 2

    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->d()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation from operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/X;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been cancelled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public p()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/S;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public q()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/S;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 3

    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s(Landroidx/fragment/app/S;)V
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-object v1, v0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    iget-object v2, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/K;->G(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Added fragment to active set "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public t(Landroidx/fragment/app/S;)V
    .locals 3

    iget-object p1, p1, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-boolean v0, p1, Landroidx/fragment/app/t;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/M;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/M;->d(Landroidx/fragment/app/t;)V

    :cond_0
    iget-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/S;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removed fragment from active set "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, LK1/c;->b:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnIndices["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "horizontal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/W;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; vertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/W;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[Head]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nDLNA Extras: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nPlugin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public u(Li/a;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, LK1/c;->o(Li/a;)Li/e;

    move-result-object p1

    new-instance v1, Lj/t;

    iget-object v2, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    check-cast p2, LD/a;

    invoke-direct {v1, v2, p2}, Lj/t;-><init>(Landroid/content/Context;LD/a;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public v(Li/a;Landroid/view/Menu;)Z
    .locals 5

    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, LK1/c;->o(Li/a;)Li/e;

    move-result-object p1

    iget-object v1, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v1, Ln/j;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, Lj/B;

    iget-object v3, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    move-object v4, p2

    check-cast v4, Lj/m;

    invoke-direct {v2, v3, v4}, Lj/B;-><init>(Landroid/content/Context;Lj/m;)V

    invoke-virtual {v1, p2, v2}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public w()V
    .locals 14

    sget-object v0, Lx5/b;->a:[B

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "readyAsyncCalls.iterator()"

    invoke-static {v0, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA5/g;

    iget-object v3, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0x40

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, LA5/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v3, v2, LA5/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    iget-object v0, p0, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LA5/g;

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_3

    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v12}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lx5/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Dispatcher"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "name"

    invoke-static {v0, v7}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lx5/a;

    invoke-direct {v13, v0, v3}, Lx5/a;-><init>(Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const-wide/16 v9, 0x3c

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v6, p0, LK1/c;->q:Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_3
    iget-object v0, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, LA5/g;->r:LA5/j;

    sget-object v7, Lx5/b;->a:[B

    :try_start_4
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v7, Ljava/io/InterruptedIOException;

    const-string v8, "executor rejected"

    invoke-direct {v7, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, LA5/j;->h(Ljava/io/IOException;)Ljava/io/IOException;

    iget-object v0, v5, LA5/g;->q:Lw5/f;

    invoke-interface {v0, v6, v7}, Lw5/f;->onFailure(Lw5/e;Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, v6, LA5/j;->D:Lw5/y;

    iget-object v0, v0, Lw5/y;->b:LK1/c;

    invoke-virtual {v0, v5}, LK1/c;->n(LA5/g;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :goto_5
    iget-object v1, v6, LA5/j;->D:Lw5/y;

    iget-object v1, v1, Lw5/y;->b:LK1/c;

    invoke-virtual {v1, v5}, LK1/c;->n(LA5/g;)V

    throw v0

    :goto_6
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_4
    return-void

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    monitor-exit p0

    throw v0
.end method

.method public x(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SessionLifecycleClient"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Queued message "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Queue size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to enqueue message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Dropping."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public z(LX4/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, LT/M;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LT/M;

    iget v1, v0, LT/M;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/M;->t:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/M;

    invoke-direct {v0, p0, p1}, LT/M;-><init>(LK1/c;LX4/c;)V

    :goto_0
    iget-object p1, v0, LT/M;->r:Ljava/lang/Object;

    iget v1, v0, LT/M;->t:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, LS4/i;->a:LS4/i;

    const/4 v5, 0x0

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, LT/M;->q:Lu5/a;

    iget-object v0, v0, LT/M;->b:LK1/c;

    :try_start_0
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v0, LT/M;->q:Lu5/a;

    iget-object v3, v0, LT/M;->b:LK1/c;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LK1/c;->r:Ljava/lang/Object;

    check-cast p1, Lm5/l;

    invoke-virtual {p1}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lm5/M;

    if-nez p1, :cond_4

    return-object v4

    :cond_4
    iget-object p1, p0, LK1/c;->q:Ljava/lang/Object;

    check-cast p1, Lu5/d;

    iput-object p0, v0, LT/M;->b:LK1/c;

    iput-object p1, v0, LT/M;->q:Lu5/a;

    iput v3, v0, LT/M;->t:I

    invoke-virtual {p1, v0}, Lu5/d;->d(LX4/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, p0

    move-object v1, p1

    :goto_1
    :try_start_1
    iget-object p1, v3, LK1/c;->r:Ljava/lang/Object;

    check-cast p1, Lm5/l;

    invoke-virtual {p1}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lm5/M;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_6

    :goto_2
    check-cast v1, Lu5/d;

    invoke-virtual {v1, v5}, Lu5/d;->f(Ljava/lang/Object;)V

    return-object v4

    :cond_6
    :try_start_2
    iput-object v3, v0, LT/M;->b:LK1/c;

    iput-object v1, v0, LT/M;->q:Lu5/a;

    iput v2, v0, LT/M;->t:I

    invoke-virtual {v3, v0}, LK1/c;->i(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_7

    :goto_3
    return-object v6

    :cond_7
    move-object v0, v3

    :goto_4
    iget-object p1, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast p1, Lm5/l;

    invoke-virtual {p1, v4}, Lm5/a0;->G(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_5
    check-cast v1, Lu5/d;

    invoke-virtual {v1, v5}, Lu5/d;->f(Ljava/lang/Object;)V

    throw p1
.end method
