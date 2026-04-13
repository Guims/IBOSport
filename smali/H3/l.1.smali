.class public final LH3/l;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/l;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/l;->a:LH3/l;

    const-string v0, "baseAddress"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/l;->b:LR3/c;

    const-string v0, "size"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/l;->c:LR3/c;

    const-string v0, "name"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/l;->d:LR3/c;

    const-string v0, "uuid"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/l;->e:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LH3/x0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/T;

    iget-wide v0, p1, LH3/T;->a:J

    sget-object v2, LH3/l;->b:LR3/c;

    invoke-interface {p2, v2, v0, v1}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/l;->c:LR3/c;

    iget-wide v1, p1, LH3/T;->b:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/l;->d:LR3/c;

    iget-object v1, p1, LH3/T;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    iget-object p1, p1, LH3/T;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, LH3/O0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, LH3/l;->e:LR3/c;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
