.class public final LV1/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:LG1/d;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/bumptech/glide/m;

.field public final e:LL1/b;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/k;

.field public i:LV1/d;

.field public j:Z

.field public k:LV1/d;

.field public l:Landroid/graphics/Bitmap;

.field public m:LV1/d;

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;LG1/d;IILandroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p1, Lcom/bumptech/glide/b;->b:LL1/b;

    iget-object p1, p1, Lcom/bumptech/glide/b;->r:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/bumptech/glide/k;

    iget-object v3, p1, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/b;

    iget-object v4, p1, Lcom/bumptech/glide/m;->q:Landroid/content/Context;

    const-class v5, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, p1, v5, v4}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V

    sget-object p1, Lcom/bumptech/glide/m;->z:LZ1/e;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/k;->w(LZ1/a;)Lcom/bumptech/glide/k;

    move-result-object p1

    new-instance v2, LZ1/e;

    invoke-direct {v2}, LZ1/a;-><init>()V

    sget-object v3, LK1/m;->b:LK1/m;

    invoke-virtual {v2, v3}, LZ1/a;->d(LK1/m;)LZ1/a;

    move-result-object v2

    check-cast v2, LZ1/e;

    invoke-virtual {v2}, LZ1/a;->u()LZ1/a;

    move-result-object v2

    check-cast v2, LZ1/e;

    invoke-virtual {v2}, LZ1/a;->p()LZ1/a;

    move-result-object v2

    check-cast v2, LZ1/e;

    invoke-virtual {v2, p3, p4}, LZ1/a;->i(II)LZ1/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/k;->w(LZ1/a;)Lcom/bumptech/glide/k;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, LV1/g;->c:Ljava/util/ArrayList;

    iput-object v1, p0, LV1/g;->d:Lcom/bumptech/glide/m;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, LV1/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LV1/f;-><init>(ILjava/lang/Object;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, LV1/g;->e:LL1/b;

    iput-object p3, p0, LV1/g;->b:Landroid/os/Handler;

    iput-object p1, p0, LV1/g;->h:Lcom/bumptech/glide/k;

    iput-object p2, p0, LV1/g;->a:LG1/d;

    sget-object p1, LQ1/c;->b:LQ1/c;

    invoke-virtual {p0, p1, p5}, LV1/g;->c(LI1/n;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-boolean v0, p0, LV1/g;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, LV1/g;->g:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, LV1/g;->m:LV1/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, LV1/g;->m:LV1/d;

    invoke-virtual {p0, v0}, LV1/g;->b(LV1/d;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LV1/g;->g:Z

    iget-object v1, p0, LV1/g;->a:LG1/d;

    iget-object v2, v1, LG1/d;->l:LG1/b;

    iget v3, v2, LG1/b;->c:I

    if-lez v3, :cond_4

    iget v4, v1, LG1/d;->k:I

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    if-ltz v4, :cond_3

    if-ge v4, v3, :cond_3

    iget-object v2, v2, LG1/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG1/a;

    iget v2, v2, LG1/a;->i:I

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iget v2, v1, LG1/d;->k:I

    add-int/2addr v2, v0

    iget-object v0, v1, LG1/d;->l:LG1/b;

    iget v0, v0, LG1/b;->c:I

    rem-int/2addr v2, v0

    iput v2, v1, LG1/d;->k:I

    new-instance v0, LV1/d;

    iget-object v5, p0, LV1/g;->b:Landroid/os/Handler;

    invoke-direct {v0, v5, v2, v3, v4}, LV1/d;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, LV1/g;->k:LV1/d;

    iget-object v0, p0, LV1/g;->h:Lcom/bumptech/glide/k;

    new-instance v2, Lc2/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lc2/d;-><init>(Ljava/lang/Object;)V

    new-instance v3, LZ1/e;

    invoke-direct {v3}, LZ1/a;-><init>()V

    invoke-virtual {v3, v2}, LZ1/a;->o(LI1/f;)LZ1/a;

    move-result-object v2

    check-cast v2, LZ1/e;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/k;->w(LZ1/a;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/k;->B(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v1, p0, LV1/g;->k:LV1/d;

    invoke-virtual {v0, v1, v0}, Lcom/bumptech/glide/k;->z(La2/c;LZ1/a;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final b(LV1/d;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, LV1/g;->g:Z

    iget-boolean v0, p0, LV1/g;->j:Z

    const/4 v1, 0x2

    iget-object v2, p0, LV1/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-boolean v0, p0, LV1/g;->f:Z

    if-nez v0, :cond_1

    iput-object p1, p0, LV1/g;->m:LV1/d;

    return-void

    :cond_1
    iget-object v0, p1, LV1/d;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, LV1/g;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v3, p0, LV1/g;->e:LL1/b;

    invoke-interface {v3, v0}, LL1/b;->b(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, LV1/g;->l:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, LV1/g;->i:LV1/d;

    iput-object p1, p0, LV1/g;->i:LV1/d;

    iget-object p1, p0, LV1/g;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LV1/e;

    check-cast v4, LV1/b;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    :goto_1
    instance-of v6, v5, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    invoke-virtual {v4}, LV1/b;->stop()V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v5, v4, LV1/b;->b:LA1/f;

    iget-object v5, v5, LA1/f;->b:Ljava/lang/Object;

    check-cast v5, LV1/g;

    iget-object v6, v5, LV1/g;->i:LV1/d;

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    iget v6, v6, LV1/d;->t:I

    goto :goto_2

    :cond_5
    move v6, v7

    :goto_2
    iget-object v5, v5, LV1/g;->a:LG1/d;

    iget-object v5, v5, LG1/d;->l:LG1/b;

    iget v5, v5, LG1/b;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ne v6, v5, :cond_6

    iget v5, v4, LV1/b;->u:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, LV1/b;->u:I

    :cond_6
    iget v5, v4, LV1/b;->v:I

    if-eq v5, v7, :cond_7

    iget v6, v4, LV1/b;->u:I

    if-lt v6, v5, :cond_7

    invoke-virtual {v4}, LV1/b;->stop()V

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    invoke-virtual {p0}, LV1/g;->a()V

    return-void
.end method

.method public final c(LI1/n;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LV1/g;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, LV1/g;->h:Lcom/bumptech/glide/k;

    new-instance v1, LZ1/e;

    invoke-direct {v1}, LZ1/a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, LZ1/a;->r(LI1/n;Z)LZ1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/k;->w(LZ1/a;)Lcom/bumptech/glide/k;

    move-result-object p1

    iput-object p1, p0, LV1/g;->h:Lcom/bumptech/glide/k;

    invoke-static {p2}, Ld2/n;->c(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, LV1/g;->n:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, LV1/g;->o:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, LV1/g;->p:I

    return-void
.end method
