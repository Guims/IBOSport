.class public final synthetic Ly0/j;
.super Ljava/lang/Object;

# interfaces
.implements Ly0/u;
.implements Ly0/z;


# static fields
.field public static final b:Ly0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly0/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly0/j;->b:Ly0/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ly0/o;

    iget-object p1, p1, Ly0/o;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lk0/C;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
