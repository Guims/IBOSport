.class public final Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/Method;->normalizedValueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/Method;->normalizedValueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests$1;->$SwitchMap$org$apache$hc$core5$http$Method:[I

    const-string v1, "method"

    invoke-static {p0, v1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->trace(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->put(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->post(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->patch(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->options(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->head(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->get(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p1}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->delete(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static delete(Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->delete(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/classic/methods/HttpDelete;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/classic/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->get(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/classic/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/classic/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->head(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static head(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/classic/methods/HttpHead;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/classic/methods/HttpHead;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static options(Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->options(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static options(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/classic/methods/HttpOptions;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/classic/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->patch(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static patch(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/classic/methods/HttpPatch;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/classic/methods/HttpPatch;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->post(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/classic/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/classic/methods/HttpPost;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->put(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/classic/methods/HttpPut;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/classic/methods/HttpPut;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static trace(Ljava/lang/String;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/classic/methods/ClassicHttpRequests;->trace(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static trace(Ljava/net/URI;)Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/classic/methods/HttpTrace;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/classic/methods/HttpTrace;-><init>(Ljava/net/URI;)V

    return-object v0
.end method
