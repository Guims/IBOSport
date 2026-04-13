.class public final LH3/b;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/b;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;

.field public static final h:LR3/c;

.field public static final i:LR3/c;

.field public static final j:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/b;->a:LH3/b;

    const-string v0, "pid"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->b:LR3/c;

    const-string v0, "processName"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->c:LR3/c;

    const-string v0, "reasonCode"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->d:LR3/c;

    const-string v0, "importance"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->e:LR3/c;

    const-string v0, "pss"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->f:LR3/c;

    const-string v0, "rss"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->g:LR3/c;

    const-string v0, "timestamp"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->h:LR3/c;

    const-string v0, "traceFile"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->i:LR3/c;

    const-string v0, "buildIdMappingForArch"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/b;->j:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LH3/q0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/D;

    iget v0, p1, LH3/D;->a:I

    sget-object v1, LH3/b;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/b;->c:LR3/c;

    iget-object v1, p1, LH3/D;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/b;->d:LR3/c;

    iget v1, p1, LH3/D;->c:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/b;->e:LR3/c;

    iget v1, p1, LH3/D;->d:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/b;->f:LR3/c;

    iget-wide v1, p1, LH3/D;->e:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/b;->g:LR3/c;

    iget-wide v1, p1, LH3/D;->f:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/b;->h:LR3/c;

    iget-wide v1, p1, LH3/D;->g:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/b;->i:LR3/c;

    iget-object v1, p1, LH3/D;->h:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/b;->j:LR3/c;

    iget-object p1, p1, LH3/D;->i:Ljava/util/List;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
