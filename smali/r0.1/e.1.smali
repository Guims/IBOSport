.class public final Lr0/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp2/f;

.field public final c:Landroid/os/Handler;

.field public final d:Lr0/c;

.field public final e:Lf/x;

.field public final f:Lr0/d;

.field public g:Lr0/b;

.field public h:Lcom/bumptech/glide/f;

.field public i:Landroidx/media3/common/AudioAttributes;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp2/f;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr0/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lr0/e;->b:Lp2/f;

    iput-object p3, p0, Lr0/e;->i:Landroidx/media3/common/AudioAttributes;

    iput-object p4, p0, Lr0/e;->h:Lcom/bumptech/glide/f;

    sget p2, Lk0/C;->a:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    new-instance p3, Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lr0/e;->c:Landroid/os/Handler;

    sget p2, Lk0/C;->a:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    new-instance p2, Lr0/c;

    invoke-direct {p2, p0}, Lr0/c;-><init>(Lr0/e;)V

    goto :goto_1

    :cond_1
    move-object p2, p4

    :goto_1
    iput-object p2, p0, Lr0/e;->d:Lr0/c;

    new-instance p2, Lf/x;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lf/x;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lr0/e;->e:Lf/x;

    sget-object p2, Lr0/b;->c:Lr0/b;

    sget-object p2, Lk0/C;->c:Ljava/lang/String;

    const-string v0, "Amazon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Xiaomi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, p4

    goto :goto_3

    :cond_3
    :goto_2
    const-string p2, "external_surround_sound_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_4

    new-instance p4, Lr0/d;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p4, p0, p3, p1, p2}, Lr0/d;-><init>(Lr0/e;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_4
    iput-object p4, p0, Lr0/e;->f:Lr0/d;

    return-void
.end method


# virtual methods
.method public final a(Lr0/b;)V
    .locals 4

    iget-boolean v0, p0, Lr0/e;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr0/e;->g:Lr0/b;

    invoke-virtual {p1, v0}, Lr0/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lr0/e;->g:Lr0/b;

    iget-object v0, p0, Lr0/e;->b:Lp2/f;

    iget-object v0, v0, Lp2/f;->q:Ljava/lang/Object;

    check-cast v0, Lr0/G;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, Lr0/G;->g0:Landroid/os/Looper;

    if-eq v2, v1, :cond_2

    const-string p1, "null"

    if-nez v2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current looper ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not the playback looper ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v0, Lr0/G;->x:Lr0/b;

    invoke-virtual {p1, v1}, Lr0/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object p1, v0, Lr0/G;->x:Lr0/b;

    iget-object p1, v0, Lr0/G;->s:Lr0/p;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lr0/p;->z()V

    :cond_3
    return-void
.end method

.method public final b(Landroid/media/AudioDeviceInfo;)V
    .locals 3

    iget-object v0, p0, Lr0/e;->h:Lcom/bumptech/glide/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioDeviceInfo;

    :goto_0
    sget v2, Lk0/C;->a:I

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lcom/bumptech/glide/f;

    const/16 v0, 0x14

    invoke-direct {v1, v0, p1}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Lr0/e;->h:Lcom/bumptech/glide/f;

    iget-object p1, p0, Lr0/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lr0/e;->i:Landroidx/media3/common/AudioAttributes;

    invoke-static {p1, v0, v1}, Lr0/b;->c(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0/e;->a(Lr0/b;)V

    return-void
.end method
