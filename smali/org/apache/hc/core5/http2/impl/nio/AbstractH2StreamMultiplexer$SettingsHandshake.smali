.class final enum Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingsHandshake"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

.field public static final enum ACKED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

.field public static final enum READY:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

.field public static final enum TRANSMITTED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->READY:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    const-string v2, "TRANSMITTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->TRANSMITTED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    new-instance v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    const-string v3, "ACKED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->ACKED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    filled-new-array {v0, v1, v2}, [Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->$VALUES:[Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->$VALUES:[Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    return-object v0
.end method
