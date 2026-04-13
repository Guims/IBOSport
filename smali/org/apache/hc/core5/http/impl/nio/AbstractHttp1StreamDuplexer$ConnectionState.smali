.class final enum Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

.field public static final enum ACTIVE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

.field public static final enum GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

.field public static final enum READY:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

.field public static final enum SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->READY:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    const-string v2, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->ACTIVE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    new-instance v2, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    const-string v3, "GRACEFUL_SHUTDOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    new-instance v3, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    const-string v4, "SHUTDOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    return-object v0
.end method
