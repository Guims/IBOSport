.class public final LE3/i;
.super Ljava/lang/Object;


# static fields
.field public static final d:LE3/h;

.field public static final e:LD0/c;


# instance fields
.field public final a:LK3/c;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE3/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LE3/h;-><init>(I)V

    sput-object v0, LE3/i;->d:LE3/h;

    new-instance v0, LD0/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LD0/c;-><init>(I)V

    sput-object v0, LE3/i;->e:LD0/c;

    return-void
.end method

.method public constructor <init>(LK3/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LE3/i;->b:Ljava/lang/String;

    iput-object v0, p0, LE3/i;->c:Ljava/lang/String;

    iput-object p1, p0, LE3/i;->a:LK3/c;

    return-void
.end method

.method public static a(LK3/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "aqs."

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LK3/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to persist App Quality Sessions session id."

    const-string p2, "FirebaseCrashlytics"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
