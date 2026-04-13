.class public final synthetic Landroidx/media3/exoplayer/g;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/media3/exoplayer/source/D;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/D;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/g;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/g;->q:Landroidx/media3/exoplayer/source/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/g;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/g;->q:Landroidx/media3/exoplayer/source/D;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->h(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/g;->q:Landroidx/media3/exoplayer/source/D;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->c(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/g;->q:Landroidx/media3/exoplayer/source/D;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->p(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/g;->q:Landroidx/media3/exoplayer/source/D;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->j(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
