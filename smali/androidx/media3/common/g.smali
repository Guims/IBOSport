.class public final synthetic Landroidx/media3/common/g;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/common/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/media3/common/g;->b:I

    iput-object p1, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/media3/common/g;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/p;

    iget-object v1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/datasource/DataSource$Factory;

    new-instance v2, Landroidx/media3/exoplayer/source/X;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/p;->a:LI0/t;

    invoke-direct {v2, v0, v1}, Landroidx/media3/exoplayer/source/X;-><init>(LI0/t;Landroidx/media3/datasource/DataSource$Factory;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/TrackSelectionParameters;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->K(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/PlaybackParameters;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->t(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer;

    iget-object v1, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->Q(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->z(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->Y(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->Z(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/MediaMetadata;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->l(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Landroidx/media3/common/g;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/g;->r:Ljava/lang/Object;

    check-cast v1, Lk0/v;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->i0(Landroidx/media3/common/SimpleBasePlayer$State;Lk0/v;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
