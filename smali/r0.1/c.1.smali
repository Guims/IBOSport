.class public final Lr0/c;
.super Landroid/media/AudioDeviceCallback;


# instance fields
.field public final synthetic a:Lr0/e;


# direct methods
.method public constructor <init>(Lr0/e;)V
    .locals 0

    iput-object p1, p0, Lr0/c;->a:Lr0/e;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    iget-object p1, p0, Lr0/c;->a:Lr0/e;

    iget-object v0, p1, Lr0/e;->a:Landroid/content/Context;

    iget-object v1, p1, Lr0/e;->i:Landroidx/media3/common/AudioAttributes;

    iget-object v2, p1, Lr0/e;->h:Lcom/bumptech/glide/f;

    invoke-static {v0, v1, v2}, Lr0/b;->c(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/e;->a(Lr0/b;)V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    iget-object v0, p0, Lr0/c;->a:Lr0/e;

    iget-object v1, v0, Lr0/e;->h:Lcom/bumptech/glide/f;

    invoke-static {p1, v1}, Lk0/C;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lr0/e;->h:Lcom/bumptech/glide/f;

    :cond_0
    iget-object p1, v0, Lr0/e;->a:Landroid/content/Context;

    iget-object v1, v0, Lr0/e;->i:Landroidx/media3/common/AudioAttributes;

    iget-object v2, v0, Lr0/e;->h:Lcom/bumptech/glide/f;

    invoke-static {p1, v1, v2}, Lr0/b;->c(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr0/e;->a(Lr0/b;)V

    return-void
.end method
