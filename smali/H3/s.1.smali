.class public final LH3/s;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/s;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/s;->a:LH3/s;

    const-string v0, "batteryLevel"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/s;->b:LR3/c;

    const-string v0, "batteryVelocity"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/s;->c:LR3/c;

    const-string v0, "proximityOn"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/s;->d:LR3/c;

    const-string v0, "orientation"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/s;->e:LR3/c;

    const-string v0, "ramUsed"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/s;->f:LR3/c;

    const-string v0, "diskUsed"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/s;->g:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LH3/F0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/c0;

    iget-object v0, p1, LH3/c0;->a:Ljava/lang/Double;

    sget-object v1, LH3/s;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/s;->c:LR3/c;

    iget v1, p1, LH3/c0;->b:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/s;->d:LR3/c;

    iget-boolean v1, p1, LH3/c0;->c:Z

    invoke-interface {p2, v0, v1}, LR3/e;->b(LR3/c;Z)LR3/e;

    sget-object v0, LH3/s;->e:LR3/c;

    iget v1, p1, LH3/c0;->d:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/s;->f:LR3/c;

    iget-wide v1, p1, LH3/c0;->e:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/s;->g:LR3/c;

    iget-wide v1, p1, LH3/c0;->f:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    return-void
.end method
