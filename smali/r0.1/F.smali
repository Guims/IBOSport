.class public final Lr0/F;
.super Landroid/media/AudioTrack$StreamEventCallback;


# instance fields
.field public final synthetic a:Lr0/C;


# direct methods
.method public constructor <init>(Lr0/C;)V
    .locals 0

    iput-object p1, p0, Lr0/F;->a:Lr0/C;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p2, p0, Lr0/F;->a:Lr0/C;

    iget-object p2, p2, Lr0/C;->d:Ljava/lang/Object;

    check-cast p2, Lr0/G;

    iget-object p2, p2, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr0/F;->a:Lr0/C;

    iget-object p1, p1, Lr0/C;->d:Ljava/lang/Object;

    check-cast p1, Lr0/G;

    iget-object p2, p1, Lr0/G;->s:Lr0/p;

    if-eqz p2, :cond_1

    iget-boolean p1, p1, Lr0/G;->W:Z

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lr0/p;->I()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lr0/F;->a:Lr0/C;

    iget-object v0, v0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Lr0/G;

    iget-object v0, v0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lr0/F;->a:Lr0/C;

    iget-object p1, p1, Lr0/C;->d:Ljava/lang/Object;

    check-cast p1, Lr0/G;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lr0/G;->V:Z

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lr0/F;->a:Lr0/C;

    iget-object v0, v0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Lr0/G;

    iget-object v0, v0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr0/F;->a:Lr0/C;

    iget-object p1, p1, Lr0/C;->d:Ljava/lang/Object;

    check-cast p1, Lr0/G;

    iget-object v0, p1, Lr0/G;->s:Lr0/p;

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lr0/G;->W:Z

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lr0/p;->I()V

    :cond_1
    :goto_0
    return-void
.end method
