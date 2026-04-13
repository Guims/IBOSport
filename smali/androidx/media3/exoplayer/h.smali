.class public final synthetic Landroidx/media3/exoplayer/h;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LE0/e;


# direct methods
.method public synthetic constructor <init>(LE0/e;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/h;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/h;->q:LE0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/h;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/h;->q:LE0/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->i(LE0/e;)LE0/e;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/h;->q:LE0/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t(LE0/e;)LE0/e;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
