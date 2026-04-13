.class public abstract Le5/b;
.super Ljava/lang/Object;

# interfaces
.implements Li5/a;
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:Li5/a;

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Class;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/b;->q:Ljava/lang/Object;

    iput-object p2, p0, Le5/b;->r:Ljava/lang/Class;

    iput-object p3, p0, Le5/b;->s:Ljava/lang/String;

    iput-object p4, p0, Le5/b;->t:Ljava/lang/String;

    iput-boolean p5, p0, Le5/b;->u:Z

    return-void
.end method


# virtual methods
.method public final a()Le5/c;
    .locals 2

    iget-boolean v0, p0, Le5/b;->u:Z

    iget-object v1, p0, Le5/b;->r:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Le5/n;->a:Le5/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Le5/i;

    invoke-direct {v0, v1}, Le5/i;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_0
    sget-object v0, Le5/n;->a:Le5/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Le5/d;

    invoke-direct {v0, v1}, Le5/d;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
