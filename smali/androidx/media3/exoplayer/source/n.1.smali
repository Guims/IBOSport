.class public final synthetic Landroidx/media3/exoplayer/source/n;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Class;

.field public final synthetic r:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/exoplayer/source/n;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/source/n;->q:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/n;->r:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/n;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/n;->q:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/n;->r:Landroidx/media3/datasource/DataSource$Factory;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/r;->e(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/n;->q:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/n;->r:Landroidx/media3/datasource/DataSource$Factory;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/r;->e(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/n;->q:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/n;->r:Landroidx/media3/datasource/DataSource$Factory;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/r;->e(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
