.class public final synthetic Landroidx/media3/datasource/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/datasource/DataSourceBitmapLoader;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/datasource/DataSourceBitmapLoader;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/datasource/c;->a:I

    iput-object p1, p0, Landroidx/media3/datasource/c;->b:Landroidx/media3/datasource/DataSourceBitmapLoader;

    iput-object p2, p0, Landroidx/media3/datasource/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/media3/datasource/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/datasource/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/datasource/c;->b:Landroidx/media3/datasource/DataSourceBitmapLoader;

    invoke-static {v1, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;->c(Landroidx/media3/datasource/DataSourceBitmapLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/datasource/c;->c:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p0, Landroidx/media3/datasource/c;->b:Landroidx/media3/datasource/DataSourceBitmapLoader;

    invoke-static {v1, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;->a(Landroidx/media3/datasource/DataSourceBitmapLoader;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
