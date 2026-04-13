.class public Lorg/apache/hc/core5/http/message/LazyLaxLineParser;
.super Lorg/apache/hc/core5/http/message/BasicLineParser;


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/message/LazyLaxLineParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/LazyLaxLineParser;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/message/LazyLaxLineParser;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/message/LazyLaxLineParser;->INSTANCE:Lorg/apache/hc/core5/http/message/LazyLaxLineParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/message/BasicLineParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseHeader(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/Header;
    .locals 2

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/message/BufferedHeader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/core5/http/message/BufferedHeader;-><init>(Lorg/apache/hc/core5/util/CharArrayBuffer;Z)V

    return-object v0
.end method
