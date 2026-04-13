.class public final Ln0/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# instance fields
.field public a:Ln0/b;

.field public b:Landroidx/media3/datasource/FileDataSource$Factory;

.field public c:Ln0/i;

.field public d:Z

.field public e:Landroidx/media3/datasource/DefaultDataSource$Factory;

.field public f:I


# virtual methods
.method public final createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 9

    iget-object v0, p0, Ln0/e;->e:Landroidx/media3/datasource/DefaultDataSource$Factory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget v8, p0, Ln0/e;->f:I

    iget-object v3, p0, Ln0/e;->a:Ln0/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Ln0/e;->d:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ln0/d;

    invoke-direct {v1, v3}, Ln0/d;-><init>(Ln0/b;)V

    :cond_2
    :goto_1
    move-object v6, v1

    new-instance v2, Ln0/f;

    iget-object v0, p0, Ln0/e;->b:Landroidx/media3/datasource/FileDataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v5

    iget-object v7, p0, Ln0/e;->c:Ln0/i;

    invoke-direct/range {v2 .. v8}, Ln0/f;-><init>(Ln0/b;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Ln0/i;I)V

    return-object v2
.end method
