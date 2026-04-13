.class public final Lorg/apache/hc/core5/http2/impl/H2Processors;
.super Ljava/lang/Object;


# static fields
.field private static final SOFTWARE:Ljava/lang/String; = "Apache-HttpCore"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static client()Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/H2Processors;->customClient(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static client(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http2/impl/H2Processors;->customClient(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static customClient(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 4

    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    invoke-static {p0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "org.apache.hc.core5"

    const-class v2, Lorg/apache/hc/core5/http/impl/HttpProcessors;

    const-string v3, "Apache-HttpCore"

    invoke-static {v3, p0, v2}, Lorg/apache/hc/core5/util/VersionInfo;->getSoftwareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v1, p0}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x5

    new-array p0, p0, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    sget-object v2, Lorg/apache/hc/core5/http2/protocol/H2RequestContent;->INSTANCE:Lorg/apache/hc/core5/http2/protocol/H2RequestContent;

    const/4 v3, 0x0

    aput-object v2, p0, v3

    sget-object v2, Lorg/apache/hc/core5/http2/protocol/H2RequestTargetHost;->INSTANCE:Lorg/apache/hc/core5/http2/protocol/H2RequestTargetHost;

    const/4 v3, 0x1

    aput-object v2, p0, v3

    sget-object v2, Lorg/apache/hc/core5/http2/protocol/H2RequestConnControl;->INSTANCE:Lorg/apache/hc/core5/http2/protocol/H2RequestConnControl;

    const/4 v3, 0x2

    aput-object v2, p0, v3

    const/4 v2, 0x3

    aput-object v1, p0, v2

    sget-object v1, Lorg/apache/hc/core5/http/protocol/RequestExpectContinue;->INSTANCE:Lorg/apache/hc/core5/http/protocol/RequestExpectContinue;

    const/4 v2, 0x4

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addAll([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static customServer(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;
    .locals 5

    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/core5/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/protocol/ResponseDate;-><init>()V

    new-instance v2, Lorg/apache/hc/core5/http/protocol/ResponseServer;

    invoke-static {p0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "org.apache.hc.core5"

    const-class v3, Lorg/apache/hc/core5/http2/impl/H2Processors;

    const-string v4, "Apache-HttpCore"

    invoke-static {v4, p0, v3}, Lorg/apache/hc/core5/util/VersionInfo;->getSoftwareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v2, p0}, Lorg/apache/hc/core5/http/protocol/ResponseServer;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x4

    new-array p0, p0, [Lorg/apache/hc/core5/http/HttpResponseInterceptor;

    const/4 v3, 0x0

    aput-object v1, p0, v3

    const/4 v1, 0x1

    aput-object v2, p0, v1

    sget-object v2, Lorg/apache/hc/core5/http2/protocol/H2ResponseContent;->INSTANCE:Lorg/apache/hc/core5/http2/protocol/H2ResponseContent;

    const/4 v4, 0x2

    aput-object v2, p0, v4

    sget-object v2, Lorg/apache/hc/core5/http2/protocol/H2ResponseConnControl;->INSTANCE:Lorg/apache/hc/core5/http2/protocol/H2ResponseConnControl;

    const/4 v4, 0x3

    aput-object v2, p0, v4

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addAll([Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    new-array v0, v1, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    sget-object v1, Lorg/apache/hc/core5/http2/protocol/H2RequestValidateHost;->INSTANCE:Lorg/apache/hc/core5/http2/protocol/H2RequestValidateHost;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addAll([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static server()Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/H2Processors;->customServer(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static server(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http2/impl/H2Processors;->customServer(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object p0

    return-object p0
.end method
