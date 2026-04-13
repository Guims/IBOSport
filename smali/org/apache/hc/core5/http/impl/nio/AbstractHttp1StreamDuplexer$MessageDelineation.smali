.class final enum Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageDelineation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

.field public static final enum CHUNK_CODED:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

.field public static final enum MESSAGE_HEAD:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

.field public static final enum NONE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->NONE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    const-string v2, "CHUNK_CODED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->CHUNK_CODED:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    new-instance v2, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    const-string v3, "MESSAGE_HEAD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->MESSAGE_HEAD:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    filled-new-array {v0, v1, v2}, [Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    return-object v0
.end method
