.class public final LZ1/f;
.super Ljava/lang/Object;

# interfaces
.implements LZ1/c;
.implements La2/b;


# static fields
.field public static final C:Z


# instance fields
.field public final A:Ljava/lang/RuntimeException;

.field public B:I

.field public final a:Ljava/lang/String;

.field public final b:Le2/e;

.field public final c:Ljava/lang/Object;

.field public final d:LZ1/d;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/bumptech/glide/e;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Class;

.field public final i:LZ1/a;

.field public final j:I

.field public final k:I

.field public final l:Lcom/bumptech/glide/g;

.field public final m:La2/c;

.field public final n:Ljava/util/List;

.field public final o:Lb2/a;

.field public final p:LL2/p;

.field public q:LK1/D;

.field public r:LJ/l;

.field public s:J

.field public volatile t:LK1/o;

.field public u:Landroid/graphics/drawable/Drawable;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GlideRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LZ1/f;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LZ1/a;IILcom/bumptech/glide/g;La2/c;Ljava/util/ArrayList;LZ1/d;LK1/o;Lb2/a;)V
    .locals 2

    sget-object v0, Ld2/f;->a:LL2/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, LZ1/f;->C:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, LZ1/f;->a:Ljava/lang/String;

    new-instance v1, Le2/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LZ1/f;->b:Le2/e;

    iput-object p3, p0, LZ1/f;->c:Ljava/lang/Object;

    iput-object p1, p0, LZ1/f;->e:Landroid/content/Context;

    iput-object p2, p0, LZ1/f;->f:Lcom/bumptech/glide/e;

    iput-object p4, p0, LZ1/f;->g:Ljava/lang/Object;

    iput-object p5, p0, LZ1/f;->h:Ljava/lang/Class;

    iput-object p6, p0, LZ1/f;->i:LZ1/a;

    iput p7, p0, LZ1/f;->j:I

    iput p8, p0, LZ1/f;->k:I

    iput-object p9, p0, LZ1/f;->l:Lcom/bumptech/glide/g;

    iput-object p10, p0, LZ1/f;->m:La2/c;

    iput-object p11, p0, LZ1/f;->n:Ljava/util/List;

    iput-object p12, p0, LZ1/f;->d:LZ1/d;

    iput-object p13, p0, LZ1/f;->t:LK1/o;

    move-object/from16 p1, p14

    iput-object p1, p0, LZ1/f;->o:Lb2/a;

    iput-object v0, p0, LZ1/f;->p:LL2/p;

    const/4 p1, 0x1

    iput p1, p0, LZ1/f;->B:I

    iget-object p1, p0, LZ1/f;->A:Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    iget-object p1, p2, Lcom/bumptech/glide/e;->h:Lcom/bumptech/glide/f;

    iget-object p1, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-class p2, Lcom/bumptech/glide/d;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Glide request origin trace"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LZ1/f;->A:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LZ1/f;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, LZ1/f;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LZ1/f;->b:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    iget-object v0, p0, LZ1/f;->m:La2/c;

    invoke-interface {v0, p0}, La2/c;->b(LZ1/f;)V

    iget-object v0, p0, LZ1/f;->r:LJ/l;

    if-eqz v0, :cond_0

    iget-object v1, v0, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, LK1/o;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, LJ/l;->r:Ljava/lang/Object;

    check-cast v2, LK1/s;

    iget-object v0, v0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, LZ1/f;

    invoke-virtual {v2, v0}, LK1/s;->h(LZ1/f;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, LZ1/f;->r:LJ/l;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, LZ1/f;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, LZ1/f;->i:LZ1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-object v1, p0, LZ1/f;->v:Landroid/graphics/drawable/Drawable;

    iget v1, v0, LZ1/a;->t:I

    if-lez v1, :cond_1

    iget-object v0, v0, LZ1/a;->D:Landroid/content/res/Resources$Theme;

    iget-object v2, p0, LZ1/f;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    invoke-static {v2, v2, v1, v0}, LQ5/d;->l(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LZ1/f;->v:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, LZ1/f;->v:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LZ1/f;->z:Z

    if-nez v1, :cond_5

    iget-object v1, p0, LZ1/f;->b:Le2/e;

    invoke-virtual {v1}, Le2/e;->a()V

    iget v1, p0, LZ1/f;->B:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LZ1/f;->b()V

    iget-object v1, p0, LZ1/f;->q:LK1/D;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v3, p0, LZ1/f;->q:LK1/D;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iget-object v3, p0, LZ1/f;->d:LZ1/d;

    if-eqz v3, :cond_2

    invoke-interface {v3, p0}, LZ1/d;->b(LZ1/c;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, LZ1/f;->m:La2/c;

    invoke-virtual {p0}, LZ1/f;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, La2/c;->j(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iput v2, p0, LZ1/f;->B:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object v0, p0, LZ1/f;->t:LK1/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LK1/o;->f(LK1/D;)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LZ1/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlideRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e(LK1/y;I)V
    .locals 4

    const-string v0, "Load failed for ["

    iget-object v1, p0, LZ1/f;->b:Le2/e;

    invoke-virtual {v1}, Le2/e;->a()V

    iget-object v1, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LZ1/f;->f:Lcom/bumptech/glide/e;

    iget v2, v2, Lcom/bumptech/glide/e;->i:I

    if-gt v2, p2, :cond_0

    const-string p2, "Glide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LZ1/f;->g:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] with dimensions ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LZ1/f;->x:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LZ1/f;->y:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v2, p2, :cond_0

    invoke-virtual {p1}, LK1/y;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, LZ1/f;->r:LJ/l;

    const/4 p2, 0x5

    iput p2, p0, LZ1/f;->B:I

    iget-object p2, p0, LZ1/f;->d:LZ1/d;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, LZ1/d;->d(LZ1/c;)V

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, LZ1/f;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, LZ1/f;->n:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, LZ1/f;->d:LZ1/d;

    if-eqz p2, :cond_3

    invoke-interface {p2}, LZ1/d;->getRoot()LZ1/d;

    move-result-object p2

    invoke-interface {p2}, LZ1/d;->a()Z

    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_5
    :goto_1
    iget-object v2, p0, LZ1/f;->d:LZ1/d;

    if-eqz v2, :cond_7

    invoke-interface {v2, p0}, LZ1/d;->e(LZ1/c;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move p2, v0

    :cond_7
    :goto_2
    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    iget-object p2, p0, LZ1/f;->g:Ljava/lang/Object;

    if-nez p2, :cond_a

    iget-object p2, p0, LZ1/f;->w:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_9

    iget-object p2, p0, LZ1/f;->i:LZ1/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LZ1/f;->w:Landroid/graphics/drawable/Drawable;

    :cond_9
    iget-object p2, p0, LZ1/f;->w:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_a
    move-object p2, p1

    :goto_3
    if-nez p2, :cond_d

    iget-object p2, p0, LZ1/f;->u:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_c

    iget-object p2, p0, LZ1/f;->i:LZ1/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LZ1/f;->u:Landroid/graphics/drawable/Drawable;

    iget p1, p2, LZ1/a;->s:I

    if-lez p1, :cond_c

    iget-object p2, p0, LZ1/f;->e:Landroid/content/Context;

    iget-object v2, p0, LZ1/f;->i:LZ1/a;

    iget-object v2, v2, LZ1/a;->D:Landroid/content/res/Resources$Theme;

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    :goto_4
    invoke-static {p2, p2, p1, v2}, LQ5/d;->l(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, LZ1/f;->u:Landroid/graphics/drawable/Drawable;

    :cond_c
    iget-object p2, p0, LZ1/f;->u:Landroid/graphics/drawable/Drawable;

    :cond_d
    if-nez p2, :cond_e

    invoke-virtual {p0}, LZ1/f;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_e
    iget-object p1, p0, LZ1/f;->m:La2/c;

    invoke-interface {p1, p2}, La2/c;->e(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    :try_start_2
    iput-boolean v0, p0, LZ1/f;->z:Z

    monitor-exit v1

    return-void

    :goto_6
    iput-boolean v0, p0, LZ1/f;->z:Z

    throw p1

    :goto_7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final f(LK1/D;IZ)V
    .locals 6

    const-string p3, "Expected to receive an object of "

    const-string v0, "Expected to receive a Resource<R> with an object of "

    iget-object v1, p0, LZ1/f;->b:Le2/e;

    invoke-virtual {v1}, Le2/e;->a()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v1, p0, LZ1/f;->r:LJ/l;

    const/4 v3, 0x5

    if-nez p1, :cond_0

    new-instance p1, LK1/y;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, LZ1/f;->h:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " inside, but instead got null."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LK1/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, LZ1/f;->e(LK1/y;I)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    invoke-interface {p1}, LK1/D;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, LZ1/f;->h:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object p3, p0, LZ1/f;->d:LZ1/d;

    if-eqz p3, :cond_3

    invoke-interface {p3, p0}, LZ1/d;->c(LZ1/c;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    iput-object v1, p0, LZ1/f;->q:LK1/D;

    const/4 p2, 0x4

    iput p2, p0, LZ1/f;->B:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object p2, p0, LZ1/f;->t:LK1/o;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LK1/o;->f(LK1/D;)V

    return-void

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_5

    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p0, p1, v0, p2}, LZ1/f;->k(LK1/D;Ljava/lang/Object;I)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_4
    :goto_2
    :try_start_4
    iput-object v1, p0, LZ1/f;->q:LK1/D;

    new-instance p2, LK1/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, LZ1/f;->h:Ljava/lang/Class;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " but instead got "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_3

    :cond_5
    const-string p3, ""

    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "{"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "} inside Resource{"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "}."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const-string p3, ""

    goto :goto_4

    :cond_6
    const-string p3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_4
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, LK1/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v3}, LZ1/f;->e(LK1/y;I)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_7

    iget-object p2, p0, LZ1/f;->t:LK1/o;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LK1/o;->f(LK1/D;)V

    :cond_7
    throw p1
.end method

.method public final g(LZ1/c;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, LZ1/f;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, v1, LZ1/f;->j:I

    iget v5, v1, LZ1/f;->k:I

    iget-object v6, v1, LZ1/f;->g:Ljava/lang/Object;

    iget-object v7, v1, LZ1/f;->h:Ljava/lang/Class;

    iget-object v8, v1, LZ1/f;->i:LZ1/a;

    iget-object v9, v1, LZ1/f;->l:Lcom/bumptech/glide/g;

    iget-object v10, v1, LZ1/f;->n:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    move v10, v3

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, LZ1/f;

    iget-object v11, v0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget v2, v0, LZ1/f;->j:I

    iget v12, v0, LZ1/f;->k:I

    iget-object v13, v0, LZ1/f;->g:Ljava/lang/Object;

    iget-object v14, v0, LZ1/f;->h:Ljava/lang/Class;

    iget-object v15, v0, LZ1/f;->i:LZ1/a;

    move/from16 v16, v3

    iget-object v3, v0, LZ1/f;->l:Lcom/bumptech/glide/g;

    iget-object v0, v0, LZ1/f;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    move/from16 v0, v16

    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v2, :cond_7

    if-ne v5, v12, :cond_7

    sget-object v2, Ld2/n;->a:[C

    const/4 v2, 0x1

    if-nez v6, :cond_4

    if-nez v13, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move/from16 v4, v16

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_7

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v8, :cond_6

    if-nez v15, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move/from16 v4, v16

    goto :goto_3

    :cond_6
    invoke-virtual {v8, v15}, LZ1/a;->f(LZ1/a;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_7

    if-ne v9, v3, :cond_7

    if-ne v10, v0, :cond_7

    return v2

    :cond_7
    return v16

    :goto_4
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LZ1/f;->B:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 7

    iget-object v0, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LZ1/f;->z:Z

    if-nez v1, :cond_f

    iget-object v1, p0, LZ1/f;->b:Le2/e;

    invoke-virtual {v1}, Le2/e;->a()V

    sget v1, Ld2/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p0, LZ1/f;->s:J

    iget-object v1, p0, LZ1/f;->g:Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-nez v1, :cond_3

    iget v1, p0, LZ1/f;->j:I

    iget v4, p0, LZ1/f;->k:I

    invoke-static {v1, v4}, Ld2/n;->i(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LZ1/f;->j:I

    iput v1, p0, LZ1/f;->x:I

    iget v1, p0, LZ1/f;->k:I

    iput v1, p0, LZ1/f;->y:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, LZ1/f;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, LZ1/f;->i:LZ1/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-object v1, p0, LZ1/f;->w:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v1, p0, LZ1/f;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    new-instance v1, LK1/y;

    const-string v3, "Received null model"

    invoke-direct {v1, v3}, LK1/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, LZ1/f;->e(LK1/y;I)V

    monitor-exit v0

    return-void

    :cond_3
    iget v1, p0, LZ1/f;->B:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_e

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v1, v5, :cond_4

    iget-object v1, p0, LZ1/f;->q:LK1/D;

    invoke-virtual {p0, v1, v3, v6}, LZ1/f;->f(LK1/D;IZ)V

    monitor-exit v0

    return-void

    :cond_4
    iget-object v1, p0, LZ1/f;->n:Ljava/util/List;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_7
    :goto_2
    iput v2, p0, LZ1/f;->B:I

    iget v1, p0, LZ1/f;->j:I

    iget v3, p0, LZ1/f;->k:I

    invoke-static {v1, v3}, Ld2/n;->i(II)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, LZ1/f;->j:I

    iget v3, p0, LZ1/f;->k:I

    invoke-virtual {p0, v1, v3}, LZ1/f;->l(II)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, LZ1/f;->m:La2/c;

    invoke-interface {v1, p0}, La2/c;->g(LZ1/f;)V

    :goto_3
    iget v1, p0, LZ1/f;->B:I

    if-eq v1, v4, :cond_9

    if-ne v1, v2, :cond_c

    :cond_9
    iget-object v1, p0, LZ1/f;->d:LZ1/d;

    if-eqz v1, :cond_a

    invoke-interface {v1, p0}, LZ1/d;->e(LZ1/c;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/4 v6, 0x1

    :cond_b
    if-eqz v6, :cond_c

    iget-object v1, p0, LZ1/f;->m:La2/c;

    invoke-virtual {p0}, LZ1/f;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, La2/c;->h(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    sget-boolean v1, LZ1/f;->C:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LZ1/f;->s:J

    invoke-static {v2, v3}, Ld2/h;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LZ1/f;->d(Ljava/lang/String;)V

    :cond_d
    monitor-exit v0

    return-void

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    iget-object v0, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LZ1/f;->B:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LZ1/f;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k(LK1/D;Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, LZ1/f;->d:LZ1/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LZ1/d;->getRoot()LZ1/d;

    move-result-object v1

    invoke-interface {v1}, LZ1/d;->a()Z

    :cond_0
    const/4 v1, 0x4

    iput v1, p0, LZ1/f;->B:I

    iput-object p1, p0, LZ1/f;->q:LK1/D;

    iget-object p1, p0, LZ1/f;->f:Lcom/bumptech/glide/e;

    iget p1, p1, Lcom/bumptech/glide/e;->i:I

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Finished loading "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, LB/f;->x(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, LZ1/f;->g:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with size ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, LZ1/f;->x:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, LZ1/f;->y:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LZ1/f;->s:J

    invoke-static {v1, v2}, Ld2/h;->a(J)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " ms"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Glide"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, LZ1/d;->f(LZ1/c;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, LZ1/f;->z:Z

    const/4 p1, 0x0

    :try_start_0
    iget-object p3, p0, LZ1/f;->n:Ljava/util/List;

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-direct {p2}, Ljava/lang/ClassCastException;-><init>()V

    throw p2

    :cond_5
    :goto_0
    iget-object p3, p0, LZ1/f;->o:Lb2/a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, LZ1/f;->m:La2/c;

    invoke-interface {p3, p2}, La2/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, LZ1/f;->z:Z

    return-void

    :goto_1
    iput-boolean p1, p0, LZ1/f;->z:Z

    throw p2
.end method

.method public final l(II)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "finished onSizeReady in "

    const-string v4, "finished setup for calling load in "

    const-string v5, "Got onSizeReady in "

    iget-object v6, v1, LZ1/f;->b:Le2/e;

    invoke-virtual {v6}, Le2/e;->a()V

    iget-object v6, v1, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v20, LZ1/f;->C:Z

    if-eqz v20, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v1, LZ1/f;->s:J

    invoke-static {v8, v9}, Ld2/h;->a(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, LZ1/f;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, v6

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget v5, v1, LZ1/f;->B:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    monitor-exit v6

    return-void

    :cond_1
    const/4 v5, 0x2

    iput v5, v1, LZ1/f;->B:I

    iget-object v7, v1, LZ1/f;->i:LZ1/a;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, -0x80000000

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v0, v7, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_1
    iput v0, v1, LZ1/f;->x:I

    if-ne v2, v7, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    int-to-float v0, v2

    mul-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_2
    iput v0, v1, LZ1/f;->y:I

    if-eqz v20, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v1, LZ1/f;->s:J

    invoke-static {v7, v8}, Ld2/h;->a(J)D

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LZ1/f;->d(Ljava/lang/String;)V

    :cond_4
    iget-object v2, v1, LZ1/f;->t:LK1/o;

    move-object v0, v3

    iget-object v3, v1, LZ1/f;->f:Lcom/bumptech/glide/e;

    iget-object v4, v1, LZ1/f;->g:Ljava/lang/Object;

    iget-object v7, v1, LZ1/f;->i:LZ1/a;

    move v8, v5

    iget-object v5, v7, LZ1/a;->x:LI1/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v6

    :try_start_1
    iget v6, v1, LZ1/f;->x:I

    iget v10, v1, LZ1/f;->y:I

    move v11, v8

    iget-object v8, v7, LZ1/a;->B:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v12, v9

    :try_start_2
    iget-object v9, v1, LZ1/f;->h:Ljava/lang/Class;

    move v13, v10

    iget-object v10, v1, LZ1/f;->l:Lcom/bumptech/glide/g;

    move v14, v11

    iget-object v11, v7, LZ1/a;->q:LK1/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v15, v12

    :try_start_3
    iget-object v12, v7, LZ1/a;->A:Ld2/c;

    move/from16 v16, v13

    iget-boolean v13, v7, LZ1/a;->y:Z

    move/from16 v17, v14

    iget-boolean v14, v7, LZ1/a;->F:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v18, v15

    :try_start_4
    iget-object v15, v7, LZ1/a;->z:LI1/j;

    move-object/from16 p1, v0

    iget-boolean v0, v7, LZ1/a;->u:Z

    iget-boolean v7, v7, LZ1/a;->G:Z

    move/from16 v19, v0

    iget-object v0, v1, LZ1/f;->p:LL2/p;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v21, v19

    move-object/from16 v19, v0

    move/from16 v0, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v16, v21

    move-object/from16 v21, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v21

    :try_start_5
    invoke-virtual/range {v2 .. v19}, LK1/o;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;LI1/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;LK1/m;Ld2/c;ZZLI1/j;ZZLZ1/f;LL2/p;)LJ/l;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v3, v18

    :try_start_6
    iput-object v2, v3, LZ1/f;->r:LJ/l;

    iget v2, v3, LZ1/f;->B:I

    if-eq v2, v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, v3, LZ1/f;->r:LJ/l;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v20, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v3, LZ1/f;->s:J

    invoke-static {v4, v5}, Ld2/h;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, LZ1/f;->d(Ljava/lang/String;)V

    :cond_6
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object/from16 v1, v18

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object v1, v15

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v3, v1

    move-object v1, v12

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v3, v1

    move-object v1, v9

    :goto_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public final pause()V
    .locals 2

    iget-object v0, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LZ1/f;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LZ1/f;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LZ1/f;->g:Ljava/lang/Object;

    iget-object v2, p0, LZ1/f;->h:Ljava/lang/Class;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
