.class public final LB4/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field public final synthetic b:LB4/s;


# direct methods
.method public constructor <init>(LB4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB4/r;->b:LB4/s;

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(I)V
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, LB4/r;->b:LB4/s;

    if-ne p1, v0, :cond_0

    invoke-virtual {v1}, LB4/s;->q0()V

    iget-object p1, v1, LB4/s;->B0:Ljava/lang/String;

    invoke-virtual {v1, p1}, LB4/s;->p0(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, v1, LB4/s;->y0:I

    :cond_1
    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    iget p1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v0, 0x3ea

    iget-object v1, p0, LB4/r;->b:LB4/s;

    if-ne p1, v0, :cond_0

    invoke-virtual {v1}, LB4/s;->q0()V

    iget-object p1, v1, LB4/s;->B0:Ljava/lang/String;

    invoke-virtual {v1, p1}, LB4/s;->p0(Ljava/lang/String;)V

    return-void

    :cond_0
    iget p1, v1, LB4/s;->y0:I

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    invoke-virtual {v1}, LB4/s;->q0()V

    iget-object p1, v1, LB4/s;->k1:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iput p1, v1, LB4/s;->y0:I

    invoke-virtual {v1}, LB4/s;->q0()V

    iget-object p1, v1, LB4/s;->B0:Ljava/lang/String;

    invoke-virtual {v1, p1}, LB4/s;->p0(Ljava/lang/String;)V

    return-void
.end method
