.class public final LF/f;
.super Ljava/lang/Object;


# static fields
.field public static final b:LF/f;


# instance fields
.field public final a:LF/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, LF/e;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, LF/f;

    new-instance v2, LF/g;

    invoke-direct {v2, v0}, LF/g;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v1, v2}, LF/f;-><init>(LF/g;)V

    sput-object v1, LF/f;->b:LF/f;

    return-void
.end method

.method public constructor <init>(LF/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/f;->a:LF/g;

    return-void
.end method

.method public static a(Ljava/lang/String;)LF/f;
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, LF/d;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, LF/e;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p0

    new-instance v0, LF/f;

    new-instance v1, LF/g;

    invoke-direct {v1, p0}, LF/g;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v0, v1}, LF/f;-><init>(LF/g;)V

    return-object v0

    :cond_2
    :goto_1
    sget-object p0, LF/f;->b:LF/f;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LF/f;

    if-eqz v0, :cond_0

    check-cast p1, LF/f;

    iget-object p1, p1, LF/f;->a:LF/g;

    iget-object v0, p0, LF/f;->a:LF/g;

    invoke-virtual {v0, p1}, LF/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LF/f;->a:LF/g;

    iget-object v0, v0, LF/g;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/f;->a:LF/g;

    iget-object v0, v0, LF/g;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
