using R2
using Test
using URIs

# NOTE: the vast majority of min.io functionality is in AWSS3, which is why these tests are so minimal

# these should be picked up by R2Config
ENV["R2_ACCESS_KEY_ID"] = "testuser"
ENV["R2_SECRET_ACCESS_KEY"] = "testpassword"

@testset "R2.jl" begin
    # with explicit config
    # cfg = R2Config(URI("http://localhost:9000"),
    #                   access_key_id="testuser", secret_access_key="testpassword")

    # # s3_create_bucket(cfg, "testbucket")

    # buck = S3Path("s3://testbucket/", config=cfg)
    # path = joinpath(buck, "testfile.txt")

    # teststr = "this is a test\n"

    # write(path, teststr)

    # @test readdir(buck) == ["testfile.txt"]
    # @test String(read(path)) == teststr

    # # config from environment
    # cfg = R2Config(URI("http://localhost:9000"))
    # buck = S3Path("s3://testbucket/", config=cfg)
    # path = joinpath(buck, "testfile.txt")
    # @test readdir(buck) == ["testfile.txt"]
    # @test String(read(path)) == teststr

    # rm(path, recursive=true, force=true)

    # @test readdir(buck) == []
end
