.class public Lorg/apache/hc/core5/http/protocol/RequestDate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/HttpRequestInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/protocol/RequestDate;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/RequestDate;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/protocol/RequestDate;->INSTANCE:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    const-string p3, "HTTP request"

    invoke-static {p1, p3}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p2, "Date"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->INSTANCE:Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;

    invoke-virtual {p3}, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/hc/core5/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
