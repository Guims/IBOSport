.class public final enum Lorg/apache/hc/core5/http/impl/nio/MessageState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/impl/nio/MessageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field public static final enum ACK:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field public static final enum BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field public static final enum COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field public static final enum HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field public static final enum IDLE:Lorg/apache/hc/core5/http/impl/nio/MessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/nio/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->IDLE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;

    const-string v2, "HEADERS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/nio/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    new-instance v2, Lorg/apache/hc/core5/http/impl/nio/MessageState;

    const-string v3, "ACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/impl/nio/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http/impl/nio/MessageState;->ACK:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    new-instance v3, Lorg/apache/hc/core5/http/impl/nio/MessageState;

    const-string v4, "BODY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/http/impl/nio/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    new-instance v4, Lorg/apache/hc/core5/http/impl/nio/MessageState;

    const-string v5, "COMPLETE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/hc/core5/http/impl/nio/MessageState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/hc/core5/http/impl/nio/MessageState;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/MessageState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/nio/MessageState;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/impl/nio/MessageState;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/impl/nio/MessageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-object v0
.end method
