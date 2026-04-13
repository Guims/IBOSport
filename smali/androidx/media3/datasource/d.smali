.class public final synthetic Landroidx/media3/datasource/d;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/e;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/datasource/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/media3/datasource/d;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/datasource/HttpDataSource;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->c(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
